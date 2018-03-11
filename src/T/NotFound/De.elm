module T.NotFound.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


title : Translation args node
title =
    final "notFound.title" <|
        s "Nicht gefunden"
