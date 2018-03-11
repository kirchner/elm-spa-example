module T.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


attribution : Translation { args | link : List node -> node } node
attribution =
    final "attribution" <|
        concat
            [ s "An interactive learning project from "
            , node .link "link" <|
                s "Thinkster"
            , s ". Code & design licensed under MIT."
            ]


conduit : Translation args node
conduit =
    final "conduit" <|
        s "conduit"


homeLink : Translation args node
homeLink =
    final "homeLink" <|
        s "Home"


newPostLink : Translation args node
newPostLink =
    final "newPostLink" <|
        s "New Post"


okButton : Translation args node
okButton =
    final "okButton" <|
        s "OK"


settingsLink : Translation args node
settingsLink =
    final "settingsLink" <|
        s "Settings"


signOutLink : Translation args node
signOutLink =
    final "signOutLink" <|
        s "Sign out"
