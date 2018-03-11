module T.Errored.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


title : Translation args node
title =
    final "errored.title" <|
        s "Error Loading Page"
