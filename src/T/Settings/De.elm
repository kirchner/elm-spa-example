module T.Settings.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


bioPlaceholder : Translation args node
bioPlaceholder =
    final "settings.bioPlaceholder" <|
        s "Eine kurzer Biografie von dir"


emailPlaceholder : Translation args node
emailPlaceholder =
    final "settings.emailPlaceholder" <|
        s "E-Mail"


passwordPlaceholder : Translation args node
passwordPlaceholder =
    final "settings.passwordPlaceholder" <|
        s "Passwort"


profilePicturePlaceholder : Translation args node
profilePicturePlaceholder =
    final "settings.profilePicturePlaceholder" <|
        s "URL deines Profilbilds"


title : Translation args node
title =
    final "settings.title" <|
        s "Deine Einstellungen"


updateSettingsButton : Translation args node
updateSettingsButton =
    final "settings.updateSettingsButton" <|
        s "Einstellungen sichern"


usernamePlaceholder : Translation args node
usernamePlaceholder =
    final "settings.usernamePlaceholder" <|
        s "Benutzername"
