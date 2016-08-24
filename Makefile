
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
	GIT_DIR=$(shell pwd)/.git/ GIT_WORK_TREE=$(shell pwd)/_book git -C _book _add .
	GIT_DIR=$(shell pwd)/.git/ GIT_WORK_TREE=$(shell pwd)/_book git -C _book commit -am "Update build"
	git checkout --force HEAD@{2}
	$(MAKE) push

push :
	git push origin +gh-pages:gh-pages

clean :
	@rm -rvf _book

.PHONY: clean build pdf publish install all push
