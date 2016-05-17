all: dist/index.html

dist/gm-reference.html: resources.rkt
	racket -t resources.rkt -- dist
	rm -f gm.exports gm.js

dist/index.html: ww.scrbl dist/gm-reference.html
	raco scribble --dest dist --dest-name index --html $<
