module T.NotFound.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


title : Translation args node
title =
    final "notFound.title" <|
        s "Not Found"
