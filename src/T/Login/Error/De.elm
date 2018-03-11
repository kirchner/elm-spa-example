module T.Login.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


emailBlank : Translation args node
emailBlank =
    final "login.error.emailBlank" <|
        s "Du musst eine E-Mail angeben."


login : Translation args node
login =
    final "login.error.login" <|
        s "Einloggen ist nicht möglich"


passwordBlank : Translation args node
passwordBlank =
    final "login.error.passwordBlank" <|
        s "Du musst ein Passwort angeben."
