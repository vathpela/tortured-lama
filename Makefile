
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
	git -C _book --git-dir=$(shell pwd)/.git/ add .
	git -C _book --git-dir=$(shell pwd)/.git/ commit -am "Update build"
	git checkout --force master
	git push origin +gh-pages:gh-pages

clean :
	@rm -rvf _book

.PHONY: clean build pdf publish install all
