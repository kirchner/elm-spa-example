module T.Article.Feed.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


favoriteArticle : Translation args node
favoriteArticle =
    final "article.feed.error.favoriteArticle" <|
        s "Beim hinzufügen eines Artikels zu deinen Favoriten ist ein Server Fehler aufgetreten."


loadFeed : Translation args node
loadFeed =
    final "article.feed.error.loadFeed" <|
        s "Beim Laden des Feeds ist ein Server Fehler aufgetreten."


signedIn : Translation args node
signedIn =
    final "article.feed.error.signedIn" <|
        s "Wenn du deinen Feed sehen möchtest, musst du dich einloggen."


signedOut : Translation args node
signedOut =
    final "article.feed.error.signedOut" <|
        s "Du bist momentan ausgeloggt. Du musst dich einloggen, wenn du Artikel zu deinen Favoriten hinzufügen möchtest."
