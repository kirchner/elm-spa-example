module T.Register.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


emailBlank : Translation args node
emailBlank =
    final "register.error.emailBlank" <|
        s "email can't be blank."


passwordBlank : Translation args node
passwordBlank =
    final "register.error.passwordBlank" <|
        s "password can't be blank."


registration : Translation args node
registration =
    final "register.error.registration" <|
        s "unable to process registration"


usernameBlank : Translation args node
usernameBlank =
    final "register.error.usernameBlank" <|
        s "username can't be blank."
