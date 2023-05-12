DOTS := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitignore
DOTFILES   := $(filter-out $(EXCLUSIONS), $(DOTS))

.PHONY:	list install

list:
	@$(foreach file, $(DOTFILES), ls -1d $(file);)

install:
	@$(foreach file, $(DOTFILES), ln -fnsv $(abspath $(file)) $(HOME)/$(file);)

