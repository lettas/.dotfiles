DOTFILES_DIR      := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

all:

update:
	git pull origin master

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)

install: update deploy init
