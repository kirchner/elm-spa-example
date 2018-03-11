module T.Article.Error.De exposing (..)

import Translation exposing (..)
import Translation.De exposing (..)


deleteArticle : Translation args node
deleteArticle =
    final "article.error.deleteArticle" <|
        s "Beim Entfernen eines Artikels ist ein Server Fehler aufgetreten."


deleteComment : Translation args node
deleteComment =
    final "article.error.deleteComment" <|
        s "Beim Entfernen eines Kommentars ist ein Server Fehler aufgetreten."


followUser : Translation args node
followUser =
    final "article.error.followUser" <|
        s "Folgen des Benutzers nicht möglich."


postComment : Translation args node
postComment =
    final "article.error.postComment" <|
        s "Beim Posten eines Kommentars ist ein Server Fehler aufgetreten."


recordFavorite : Translation args node
recordFavorite =
    final "article.error.recordFavorite" <|
        s "Beim Abspeichern deines Favoriten ist ein Server Fehler aufgetreten. Tut uns leid!"
