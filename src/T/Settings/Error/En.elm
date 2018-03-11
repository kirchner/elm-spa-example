module T.Settings.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


emailBlank : Translation args node
emailBlank =
    final "settings.error.emailBlank" <|
        s "email can't be blank."


saveChanges : Translation args node
saveChanges =
    final "settings.error.saveChanges" <|
        s "unable to save changes"


usernameBlank : Translation args node
usernameBlank =
    final "settings.error.usernameBlank" <|
        s "username can't be blank."
