module T.Settings.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


bioPlaceholder : Translation args node
bioPlaceholder =
    final "settings.bioPlaceholder" <|
        s "Short bio about you"


emailPlaceholder : Translation args node
emailPlaceholder =
    final "settings.emailPlaceholder" <|
        s "Email"


passwordPlaceholder : Translation args node
passwordPlaceholder =
    final "settings.passwordPlaceholder" <|
        s "Password"


profilePicturePlaceholder : Translation args node
profilePicturePlaceholder =
    final "settings.profilePicturePlaceholder" <|
        s "URL of profile picture"


title : Translation args node
title =
    final "settings.title" <|
        s "Your Settings"


updateSettingsButton : Translation args node
updateSettingsButton =
    final "settings.updateSettingsButton" <|
        s "Update Settings"


usernamePlaceholder : Translation args node
usernamePlaceholder =
    final "settings.usernamePlaceholder" <|
        s "Username"
