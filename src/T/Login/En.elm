module T.Login.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


emailPlaceholder : Translation args node
emailPlaceholder =
    final "login.emailPlaceholder" <|
        s "Email"


passwordPlaceholder : Translation args node
passwordPlaceholder =
    final "login.passwordPlaceholder" <|
        s "Password"


signInButton : Translation args node
signInButton =
    final "login.signInButton" <|
        s "Sign in"


subtitle : Translation args node
subtitle =
    final "login.subtitle" <|
        s "Need an account?"


title : Translation args node
title =
    final "login.title" <|
        s "Sign in"
