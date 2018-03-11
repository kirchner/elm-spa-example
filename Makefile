build:
	elm-make --yes --output elm.js src/Main.elm

switch-to-en:
	node ../elm-translation-runner/index.js generate-elm --only-for en
	elm-make --yes --output elm.js src/Main.elm

switch-to-de:
	node ../elm-translation-runner/index.js generate-elm --only-for de
	elm-make --yes --output elm.js src/Main.elm

clean-i18n:
	rm -fr src/T/
	rm src/T.elm
