module T.Profile.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


profileUnavailable : Translation args node
profileUnavailable =
    final "profile.error.profileUnavailable" <|
        s "Profile is currently unavailable."


signedOut : Translation args node
signedOut =
    final "profile.error.signedOut" <|
        s "You are currently signed out. You must be signed in to follow people."
