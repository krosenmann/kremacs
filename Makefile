PDIR=~/sources/kremacs

all: tangle

tangle:
	mkdir $(PDIR)/src
	emacs README.org --batch -f org-babel-tangle --kill
	ls $(PDIR)/src/

install:
	cp $(PDIR)/src/*.el ~/.emacs.d/

clean:
	rm -rf $(PDIR)/src
	rm -rf $(PDIR)/release
