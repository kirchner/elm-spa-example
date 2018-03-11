module Page.NotFound exposing (view)

import Data.Session exposing (Session)
import Html exposing (Html, div, h1, img, main_, text)
import Html.Attributes exposing (alt, class, id, src, tabindex)
import T.NotFound
import Translation exposing (asString)
import Views.Assets as Assets


-- VIEW --


view : Session -> Html msg
view session =
    main_ [ id "content", class "container", tabindex -1 ]
        [ h1 []
            [ T.NotFound.title
                |> asString
                |> text
            ]
        , div [ class "row" ]
            [ img [ Assets.src Assets.error, alt "giant laser walrus wreaking havoc" ] [] ]
        ]
