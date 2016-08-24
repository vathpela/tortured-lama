TOPDIR = $(shell pwd)
GITDIR = $(TOPDIR)/.git/
BOOKDIR = $(TOPDIR)/_book/
HEAD = $(notdir $(shell cut -d\  -f2 $(GITDIR)/HEAD))
STAGING := $(shell mktemp -d)

all : | clean
all : build pdf

echo :
	@echo HEAD=$(HEAD)

build : | clean install
	cp -a $(GITDIR) $(STAGING)/.git/
	@git config receive.denyCurrentBranch warn
	cd $(STAGING) ; \
	GIT_DIR=$(STAGING)/.git/ GIT_WORK_TREE=$(STAGING) git -C $(STAGING) remote add real $(GITDIR) ;\
	GIT_DIR=$(STAGING)/.git/ GIT_WORK_TREE=$(STAGING) git -C $(STAGING) checkout gh-pages --force ;\
	GIT_DIR=$(STAGING)/.git/ GIT_WORK_TREE=$(STAGING) git -C $(STAGING) rm -r .
	cd $(TOPDIR) ; \
	gitbook build
	mv $(STAGING)/.git/ $(BOOKDIR)/.git/
	cd $(BOOKDIR) ; \
	cp $(TOPDIR)/.gitignore $(BOOKDIR)/.gitignore ; \
	GIT_DIR=$(BOOKDIR)/.git/ GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) add . ; \
	GIT_DIR=$(BOOKDIR)/.git/ GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) commit -am "Update build" ;\
	GIT_DIR=$(BOOKDIR)/.git/ GIT_WORK_TREE=$(BOOKDIR) git -C $(BOOKDIR) push real +gh-pages:gh-pages
	cd $(TOPDIR) ;\
	git checkout --force $(HEAD)
	rm -rf $(STAGING)

install : |
	gitbook install

pdf : | build

publish : | build
	$(MAKE) push

push :
	git push origin +gh-pages:gh-pages

clean :
	@echo removing '_book'
	@rm -rf _book/

.PHONY: clean build pdf publish install all push
