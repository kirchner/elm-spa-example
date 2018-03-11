module T.Home.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


homepageUnavailable : Translation args node
homepageUnavailable =
    final "home.homepageUnavailable" <|
        s "Die Startseite ist momentan nicht verfügbar."


subtitle : Translation args node
subtitle =
    final "home.subtitle" <|
        s "Ein Ort um dein Wissen zu Teilen."
