TOPDIR = $(shell pwd)
GITDIR = $(TOPDIR)/.git/
BOOKDIR = $(TOPDIR)/_book/
HEAD = $(notdir $(shell cut -d\  -f2 $(GITDIR)/HEAD))

all : | clean
all : build pdf

echo :
	@echo HEAD=$(HEAD)

build : | clean install
	gitbook build

install : |
	gitbook install

pdf : | build

publish : | build
	@cp .gitignore _book/.gitignore
	cd _book ; \
	git checkout gh-pages ; \
	GIT_DIR=$(GITDIR) GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) add . ; \
	GIT_DIR=$(GITDIR) GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) commit -am "Update build" ;\
	git checkout --force $(HEAD) ;\
	cd $(TOPDIR)
	$(MAKE) push

push :
	git push origin +gh-pages:gh-pages

clean :
	@echo removing '_book'
	@rm -rf _book/

.PHONY: clean build pdf publish install all push
