module T.Login.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


emailBlank : Translation args node
emailBlank =
    final "login.error.emailBlank" <|
        s "email can't be blank."


login : Translation args node
login =
    final "login.error.login" <|
        s "unable to perform login"


passwordBlank : Translation args node
passwordBlank =
    final "login.error.passwordBlank" <|
        s "password can't be blank."
