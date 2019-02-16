PDIR=~/sources/kremacs

all: tangle dependencies

tangle:
	mkdir $(PDIR)/src
	emacs README.org --batch -f org-babel-tangle --kill
	ls $(PDIR)/src/

install:
	cp $(PDIR)/src/*.el ~/.emacs.d/

dependencies:
	sudo apt install aspell ditaa plantuml

clean:
	rm -rf $(PDIR)/src
	rm -rf $(PDIR)/release
