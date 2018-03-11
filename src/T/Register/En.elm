module T.Register.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


emailPlaceholder : Translation args node
emailPlaceholder =
    final "register.emailPlaceholder" <|
        s "Email"


passwordPlaceholder : Translation args node
passwordPlaceholder =
    final "register.passwordPlaceholder" <|
        s "Password"


signUpButton : Translation args node
signUpButton =
    final "register.signUpButton" <|
        s "Sign up"


subtitle : Translation args node
subtitle =
    final "register.subtitle" <|
        s "Have an account?"


title : Translation args node
title =
    final "register.title" <|
        s "Sign up"


usernamePlaceholder : Translation args node
usernamePlaceholder =
    final "register.usernamePlaceholder" <|
        s "Username"
