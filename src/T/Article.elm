module T.Article exposing (..)

import Translation exposing (Translation)
import T.Article.En as En exposing (..)


articleUnavailable :  Translation args node
articleUnavailable  =
    En.articleUnavailable


deleteArticleButton :  Translation args node
deleteArticleButton  =
    En.deleteArticleButton


editArticleButton :  Translation args node
editArticleButton  =
    En.editArticleButton


favouriteArticleButton :  Translation { args | count : Float } node
favouriteArticleButton  =
    En.favouriteArticleButton


postComment :  Translation args node
postComment  =
    En.postComment


readMore :  Translation args node
readMore  =
    En.readMore


signInOrSignUp :  Translation { args | toLogin : List node -> node, toRegister : List node -> node } node
signInOrSignUp  =
    En.signInOrSignUp


writeAComment :  Translation args node
writeAComment  =
    En.writeAComment
