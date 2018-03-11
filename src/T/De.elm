module T.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


attribution : Translation { args | link : List node -> node } node
attribution =
    final "attribution" <|
        concat
            [ s "Ein interaktives Lernproject von "
            , node .link "link" <|
                s "Thinkster"
            , s ". Code & design lizensiert unter der MIT Lizenz."
            ]


conduit : Translation args node
conduit =
    final "conduit" <|
        s "conduit"


homeLink : Translation args node
homeLink =
    final "homeLink" <|
        s "Startseite"


newPostLink : Translation args node
newPostLink =
    final "newPostLink" <|
        s "Neuer Artikel"


okButton : Translation args node
okButton =
    final "okButton" <|
        s "OK"


settingsLink : Translation args node
settingsLink =
    final "settingsLink" <|
        s "Einstellungen"


signOutLink : Translation args node
signOutLink =
    final "signOutLink" <|
        s "Ausloggen"
