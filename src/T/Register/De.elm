module T.Register.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


emailPlaceholder : Translation args node
emailPlaceholder =
    final "register.emailPlaceholder" <|
        s "E-Mail"


passwordPlaceholder : Translation args node
passwordPlaceholder =
    final "register.passwordPlaceholder" <|
        s "Passwort"


signUpButton : Translation args node
signUpButton =
    final "register.signUpButton" <|
        s "Anmelden"


subtitle : Translation args node
subtitle =
    final "register.subtitle" <|
        s "Hast du bereits einen Account?"


title : Translation args node
title =
    final "register.title" <|
        s "Anmelden"


usernamePlaceholder : Translation args node
usernamePlaceholder =
    final "register.usernamePlaceholder" <|
        s "Benutzername"
