module T.Errored.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


title : Translation args node
title =
    final "errored.title" <|
        s "Fehler beim Laden der Seite"
