TOPDIR = $(shell pwd)
GITDIR = $(TOPDIR)/.git/
BOOKDIR = $(TOPDIR)/_book/
HEAD = $(shell cut -d\  -f2 $(GITDIR)/.git/HEAD)

all : | clean
all : build pdf

build : | clean install
	gitbook build

install : |
	gitbook install

pdf : | build

publish : | build
	@cp .gitignore _book/.gitignore
	git checkout gh-pages
	cd $(BOOKDIR) ; GIT_DIR=$(GITDIR) GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) add .
	cd $(BOOKDIR) ; GIT_DIR=$(GITDIR) GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) commit -am "Update build"
	cd $(TOPDIR)
	git checkout --force $(HEAD)
	$(MAKE) push

push :
	git push origin +gh-pages:gh-pages

clean :
	@echo removing '_book'
	@rm -rf _book/

.PHONY: clean build pdf publish install all push
