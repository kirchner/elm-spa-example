module T.Article.Editor.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


articleUnavailable : Translation args node
articleUnavailable =
    final "article.editor.error.articleUnavailable" <|
        s "Der Artikel ist momentan nicht verfügbar."


bodyBlank : Translation args node
bodyBlank =
    final "article.editor.error.bodyBlank" <|
        s "Der Artikeltext darf nicht leer sein."


publishArticle : Translation args node
publishArticle =
    final "article.editor.error.publishArticle" <|
        s "Beim Veröffentlichen des Artikels ist ein Server Fehler aufgetreten."


saveArticle : Translation args node
saveArticle =
    final "article.editor.error.saveArticle" <|
        s "Beim Speichern des Artikels ist einer Server Fehler aufgetreten."


titleBlank : Translation args node
titleBlank =
    final "article.editor.error.titleBlank" <|
        s "Die Überschrift darf nicht leer sein."
