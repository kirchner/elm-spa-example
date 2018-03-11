module T.Article.Error exposing (..)

import Translation exposing (Translation)
import T.Article.Error.En as En exposing (..)


deleteArticle :  Translation args node
deleteArticle  =
    En.deleteArticle


deleteComment :  Translation args node
deleteComment  =
    En.deleteComment


followUser :  Translation args node
followUser  =
    En.followUser


postComment :  Translation args node
postComment  =
    En.postComment


recordFavorite :  Translation args node
recordFavorite  =
    En.recordFavorite
