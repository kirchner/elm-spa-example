module T.Profile.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


profileUnavailable : Translation args node
profileUnavailable =
    final "profile.error.profileUnavailable" <|
        s "Das Profil ist momentan nicht verfügbar."


signedOut : Translation args node
signedOut =
    final "profile.error.signedOut" <|
        s "Du bist gerade ausgeloggt. Du musst dich einloggen, wenn du anderen Personen folgen möchtest."
