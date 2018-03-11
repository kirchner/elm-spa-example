module T.Article.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


articleUnavailable : Translation args node
articleUnavailable =
    final "article.articleUnavailable" <|
        s "Der Artikel ist momentan nicht verfügbar."


deleteArticleButton : Translation args node
deleteArticleButton =
    final "article.deleteArticleButton" <|
        s "Artikel löschen"


editArticleButton : Translation args node
editArticleButton =
    final "article.editArticleButton" <|
        s "Artikel editieren"


favouriteArticleButton : Translation { args | count : Float } node
favouriteArticleButton =
    final "article.favouriteArticleButton" <|
        concat
            [ s "Zu Lieblingsartikeln hinzufügen ("
            , float decimalStandard .count "count"
            , s ")"
            ]


postComment : Translation args node
postComment =
    final "article.postComment" <|
        s "Poste den Kommentar"


readMore : Translation args node
readMore =
    final "article.readMore" <|
        s "Lies mehr..."


signInOrSignUp : Translation { args | toLogin : List node -> node, toRegister : List node -> node } node
signInOrSignUp =
    final "article.signInOrSignUp" <|
        concat
            [ s "Du musst dich "
            , node .toLogin "toLogin" <|
                s "einloggen"
            , s " oder "
            , node .toRegister "toRegister" <|
                s "registrieren"
            , s " um Artikel kommentieren zu können."
            ]


writeAComment : Translation args node
writeAComment =
    final "article.writeAComment" <|
        s "Schreibe einen Kommentare..."
