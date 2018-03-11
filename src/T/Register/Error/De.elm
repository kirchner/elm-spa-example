module T.Register.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


emailBlank : Translation args node
emailBlank =
    final "register.error.emailBlank" <|
        s "Du musst eine E-Mail angeben."


passwordBlank : Translation args node
passwordBlank =
    final "register.error.passwordBlank" <|
        s "Du musst ein Passwort angeben."


registration : Translation args node
registration =
    final "register.error.registration" <|
        s "Anmeldung war nicht erfolgreich"


usernameBlank : Translation args node
usernameBlank =
    final "register.error.usernameBlank" <|
        s "Du musst einen Benutzernamen angeben."
