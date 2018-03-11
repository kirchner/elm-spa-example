module T.Article.Editor.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


contentPlaceholder : Translation args node
contentPlaceholder =
    final "article.editor.contentPlaceholder" <|
        s "Schreib deinen Artikel (in Markdown)"


descriptionPlaceholder : Translation args node
descriptionPlaceholder =
    final "article.editor.descriptionPlaceholder" <|
        s "Worum geht es in diesem Artikel?"


saveButtonPublish : Translation args node
saveButtonPublish =
    final "article.editor.saveButtonPublish" <|
        s "Artikel veröffentlichen"


saveButtonUpdate : Translation args node
saveButtonUpdate =
    final "article.editor.saveButtonUpdate" <|
        s "Artikel updaten"


tagsPlaceholder : Translation args node
tagsPlaceholder =
    final "article.editor.tagsPlaceholder" <|
        s "Füge Tags hinzu"


titlePlaceholder : Translation args node
titlePlaceholder =
    final "article.editor.titlePlaceholder" <|
        s "Artikelüberschrift"
