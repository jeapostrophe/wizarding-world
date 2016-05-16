all: dist/index.html

dist/index.html: ww.scrbl
	raco scribble --dest dist --dest-name index --html $^
