module T.Article.Editor.En exposing (..)

import Translation exposing (..)
import Translation.En exposing (..)


contentPlaceholder : Translation args node
contentPlaceholder =
    final "article.editor.contentPlaceholder" <|
        s "Write your article (in markdown)"


descriptionPlaceholder : Translation args node
descriptionPlaceholder =
    final "article.editor.descriptionPlaceholder" <|
        s "What's this article about?"


saveButtonPublish : Translation args node
saveButtonPublish =
    final "article.editor.saveButtonPublish" <|
        s "Publish Article"


saveButtonUpdate : Translation args node
saveButtonUpdate =
    final "article.editor.saveButtonUpdate" <|
        s "Update Article"


tagsPlaceholder : Translation args node
tagsPlaceholder =
    final "article.editor.tagsPlaceholder" <|
        s "Enter tags"


titlePlaceholder : Translation args node
titlePlaceholder =
    final "article.editor.titlePlaceholder" <|
        s "Article Title"
