module T.Settings.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


emailBlank : Translation args node
emailBlank =
    final "settings.error.emailBlank" <|
        s "Du musst eine E-Mail angeben."


saveChanges : Translation args node
saveChanges =
    final "settings.error.saveChanges" <|
        s "Abspeichern der Einstellungen nicht möglich"


usernameBlank : Translation args node
usernameBlank =
    final "settings.error.usernameBlank" <|
        s "Du musst einen Benutzernamen angeben."
