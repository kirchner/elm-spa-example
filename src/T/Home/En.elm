module T.Home.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


homepageUnavailable : Translation args node
homepageUnavailable =
    final "home.homepageUnavailable" <|
        s "Homepage is currently unavailable."


subtitle : Translation args node
subtitle =
    final "home.subtitle" <|
        s "A place to share your knowledge."
