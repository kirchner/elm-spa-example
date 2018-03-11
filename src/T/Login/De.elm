module T.Login.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


emailPlaceholder : Translation args node
emailPlaceholder =
    final "login.emailPlaceholder" <|
        s "E-Mail"


passwordPlaceholder : Translation args node
passwordPlaceholder =
    final "login.passwordPlaceholder" <|
        s "Passwort"


signInButton : Translation args node
signInButton =
    final "login.signInButton" <|
        s "Einloggen"


subtitle : Translation args node
subtitle =
    final "login.subtitle" <|
        s "Brauchst du einen Account?"


title : Translation args node
title =
    final "login.title" <|
        s "Einloggen"
