module T.Article.Feed.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


favoriteArticle : Translation args node
favoriteArticle =
    final "article.feed.error.favoriteArticle" <|
        s "Server error while trying to favorite article."


loadFeed : Translation args node
loadFeed =
    final "article.feed.error.loadFeed" <|
        s "Server error while trying to load feed"


signedIn : Translation args node
signedIn =
    final "article.feed.error.signedIn" <|
        s "You need to be signed in to view your feed."


signedOut : Translation args node
signedOut =
    final "article.feed.error.signedOut" <|
        s "You are currently signed out. You must sign in to favorite articles."
