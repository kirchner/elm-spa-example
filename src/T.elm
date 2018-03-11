module T exposing (..)

import Translation exposing (Translation)
import T.En as En exposing (..)


attribution :  Translation { args | link : List node -> node } node
attribution  =
    En.attribution


conduit :  Translation args node
conduit  =
    En.conduit


homeLink :  Translation args node
homeLink  =
    En.homeLink


newPostLink :  Translation args node
newPostLink  =
    En.newPostLink


okButton :  Translation args node
okButton  =
    En.okButton


settingsLink :  Translation args node
settingsLink  =
    En.settingsLink


signOutLink :  Translation args node
signOutLink  =
    En.signOutLink
