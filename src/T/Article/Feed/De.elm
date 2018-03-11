module T.Article.Feed.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


authorFeed : Translation args node
authorFeed =
    final "article.feed.authorFeed" <|
        s "Meine Artikel"


favoritedFeed : Translation args node
favoritedFeed =
    final "article.feed.favoritedFeed" <|
        s "Lieblingsartikel"


globalFeed : Translation args node
globalFeed =
    final "article.feed.globalFeed" <|
        s "Globaler Feed"


yourFeed : Translation args node
yourFeed =
    final "article.feed.yourFeed" <|
        s "Dein Feed"
