module Page.Register exposing (ExternalMsg(..), Model, Msg, initialModel, update, view)

import Data.Session exposing (Session)
import Data.User exposing (User)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as Decode exposing (Decoder, decodeString, field, string)
import Json.Decode.Pipeline exposing (decode, optional)
import Request.User exposing (storeSession)
import Route exposing (Route)
import T.Register
import T.Register.Error
import Translation exposing (asString)
import Util exposing ((=>))
import Validate exposing (Validator, ifBlank, validate)
import Views.Form as Form


-- MODEL --


type alias Model =
    { errors : List Error
    , email : String
    , username : String
    , password : String
    }


initialModel : Model
initialModel =
    { errors = []
    , email = ""
    , username = ""
    , password = ""
    }



-- VIEW --


view : Session -> Model -> Html Msg
view session model =
    div [ class "auth-page" ]
        [ div [ class "container page" ]
            [ div [ class "row" ]
                [ div [ class "col-md-6 offset-md-3 col-xs-12" ]
                    [ h1 [ class "text-xs-center" ]
                        [ T.Register.title
                            |> asString
                            |> text
                        ]
                    , p [ class "text-xs-center" ]
                        [ a [ Route.href Route.Login ]
                            [ T.Register.subtitle
                                |> asString
                                |> text
                            ]
                        ]
                    , Form.viewErrors model.errors
                    , viewForm
                    ]
                ]
            ]
        ]


viewForm : Html Msg
viewForm =
    Html.form [ onSubmit SubmitForm ]
        [ Form.input
            [ class "form-control-lg"
            , T.Register.usernamePlaceholder
                |> asString
                |> placeholder
            , onInput SetUsername
            ]
            []
        , Form.input
            [ class "form-control-lg"
            , T.Register.emailPlaceholder
                |> asString
                |> placeholder
            , onInput SetEmail
            ]
            []
        , Form.password
            [ class "form-control-lg"
            , T.Register.passwordPlaceholder
                |> asString
                |> placeholder
            , onInput SetPassword
            ]
            []
        , button [ class "btn btn-lg btn-primary pull-xs-right" ]
            [ T.Register.signUpButton
                |> asString
                |> text
            ]
        ]



-- UPDATE --


type Msg
    = SubmitForm
    | SetEmail String
    | SetUsername String
    | SetPassword String
    | RegisterCompleted (Result Http.Error User)


type ExternalMsg
    = NoOp
    | SetUser User


update : Msg -> Model -> ( ( Model, Cmd Msg ), ExternalMsg )
update msg model =
    case msg of
        SubmitForm ->
            case validate modelValidator model of
                [] ->
                    { model | errors = [] }
                        => Http.send RegisterCompleted (Request.User.register model)
                        => NoOp

                errors ->
                    { model | errors = errors }
                        => Cmd.none
                        => NoOp

        SetEmail email ->
            { model | email = email }
                => Cmd.none
                => NoOp

        SetUsername username ->
            { model | username = username }
                => Cmd.none
                => NoOp

        SetPassword password ->
            { model | password = password }
                => Cmd.none
                => NoOp

        RegisterCompleted (Err error) ->
            let
                errorMessages =
                    case error of
                        Http.BadStatus response ->
                            response.body
                                |> decodeString (field "errors" errorsDecoder)
                                |> Result.withDefault []

                        _ ->
                            [ asString T.Register.Error.registration ]
            in
            { model | errors = List.map (\errorMessage -> Form => errorMessage) errorMessages }
                => Cmd.none
                => NoOp

        RegisterCompleted (Ok user) ->
            model
                => Cmd.batch [ storeSession user, Route.modifyUrl Route.Home ]
                => SetUser user



-- VALIDATION --


type Field
    = Form
    | Username
    | Email
    | Password


type alias Error =
    ( Field, String )


modelValidator : Validator Error Model
modelValidator =
    Validate.all
        [ ifBlank .username (Username => asString T.Register.Error.usernameBlank)
        , ifBlank .email (Email => asString T.Register.Error.emailBlank)
        , ifBlank .password (Password => asString T.Register.Error.passwordBlank)
        ]


errorsDecoder : Decoder (List String)
errorsDecoder =
    decode (\email username password -> List.concat [ email, username, password ])
        |> optionalError "email"
        |> optionalError "username"
        |> optionalError "password"


optionalError : String -> Decoder (List String -> a) -> Decoder a
optionalError fieldName =
    let
        errorToString errorMessage =
            String.join " " [ fieldName, errorMessage ]
    in
    optional fieldName (Decode.list (Decode.map errorToString string)) []
