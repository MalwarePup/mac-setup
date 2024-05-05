SHELL := /bin/sh

.PHONY: all install defaults clean

all: install

install:
	@echo "Starting installation..."
	@./bin/brew.sh

defaults:
	@echo "Applying system defaults..."
	@./bin/defaults.sh

clean:
	@echo "Cleaning up..."
