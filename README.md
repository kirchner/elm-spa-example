# Translated version of rtfeldman/elm-spa-example

This is an internationalized version of
[rtfeldman/elm-spa-example](https://github.com/rtfeldman/elm-spa-example) using
[kirchner/elm-translation-runner](https://github.com/kirchner/elm-translation-runner).
Its only purpose is to show, what an Elm application looks like when using
[kirchner/elm-translation](https://github.com/kirchner/elm-translation) as an
i18n-solution. It may be interesting to take a look at the
[diff](https://github.com/rtfeldman/elm-spa-example/compare/master...kirchner:translate)
between this version and the original project.


## Switching Locales

To switch the language to the locale `de` you have to run

```
$ elm-translation generate-elm --only-for de
```

Right now, there are only the locales `de` and `en` available.
