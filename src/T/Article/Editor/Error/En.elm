module T.Article.Editor.Error.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


articleUnavailable : Translation args node
articleUnavailable =
    final "article.editor.error.articleUnavailable" <|
        s "Article is currently unavailable."


bodyBlank : Translation args node
bodyBlank =
    final "article.editor.error.bodyBlank" <|
        s "body can't be blank."


publishArticle : Translation args node
publishArticle =
    final "article.editor.error.publishArticle" <|
        s "Server error while attempting to publish article"


saveArticle : Translation args node
saveArticle =
    final "article.editor.error.saveArticle" <|
        s "Server error while attempting to save article"


titleBlank : Translation args node
titleBlank =
    final "article.editor.error.titleBlank" <|
        s "title can't be blank."
