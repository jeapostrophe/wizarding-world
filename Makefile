all: dist/index.html

push: dist/index.html
	cd dist && (git commit -m "Update" . ; git push origin gh-pages)

dist/char.pdf: char.pdf
	cp -f $< $@

dist/gm-reference.html: resources.rkt
	racket -t resources.rkt -- dist
	rm -f gm.exports gm.js

dist/index.html: ww.scrbl dist/gm-reference.html dist/char.pdf
	raco scribble --dest dist --dest-name index --html $<
