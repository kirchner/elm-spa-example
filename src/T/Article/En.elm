module T.Article.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


articleUnavailable : Translation args node
articleUnavailable =
    final "article.articleUnavailable" <|
        s "Article is currently unavailable."


deleteArticleButton : Translation args node
deleteArticleButton =
    final "article.deleteArticleButton" <|
        s "Delete Article"


editArticleButton : Translation args node
editArticleButton =
    final "article.editArticleButton" <|
        s "Edit Article"


favouriteArticleButton : Translation { args | count : Float } node
favouriteArticleButton =
    final "article.favouriteArticleButton" <|
        concat
            [ s "Favourite Article ("
            , float decimalStandard .count "count"
            , s ")"
            ]


postComment : Translation args node
postComment =
    final "article.postComment" <|
        s "Post Comment"


readMore : Translation args node
readMore =
    final "article.readMore" <|
        s "Read more..."


signInOrSignUp : Translation { args | toLogin : List node -> node, toRegister : List node -> node } node
signInOrSignUp =
    final "article.signInOrSignUp" <|
        concat
            [ node .toLogin "toLogin" <|
                s "Sign in"
            , s " or "
            , node .toRegister "toRegister" <|
                s "sign up"
            , s " to add comments on this article."
            ]


writeAComment : Translation args node
writeAComment =
    final "article.writeAComment" <|
        s "Write a comment..."
