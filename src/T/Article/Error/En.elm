module T.Article.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


deleteArticle : Translation args node
deleteArticle =
    final "article.error.deleteArticle" <|
        s "Server error while trying to delete article."


deleteComment : Translation args node
deleteComment =
    final "article.error.deleteComment" <|
        s "Server error while trying to delete comment."


followUser : Translation args node
followUser =
    final "article.error.followUser" <|
        s "Unable to follow user."


postComment : Translation args node
postComment =
    final "article.error.postComment" <|
        s "Server error while trying to post comment."


recordFavorite : Translation args node
recordFavorite =
    final "article.error.recordFavorite" <|
        s "There was a server error trying to record your Favorite. Sorry!"
