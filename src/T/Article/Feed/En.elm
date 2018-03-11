module T.Article.Feed.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


authorFeed : Translation args node
authorFeed =
    final "article.feed.authorFeed" <|
        s "My Articles"


favoritedFeed : Translation args node
favoritedFeed =
    final "article.feed.favoritedFeed" <|
        s "Favorited Articles"


globalFeed : Translation args node
globalFeed =
    final "article.feed.globalFeed" <|
        s "Global Feed"


yourFeed : Translation args node
yourFeed =
    final "article.feed.yourFeed" <|
        s "Your Feed"
