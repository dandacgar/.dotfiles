.PHONY: all

all:
	# Use 'make update'
	

.PHONY: update

update: 
	./bin/.local/bin/ds_store_clean.sh
	./bin/.local/bin/dotfiles-update.sh


