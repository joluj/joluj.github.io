EXE = hugo

.PHONY: build
build:
	cd joluj && rm public -rf && $(EXE)

.PHONY: server
server:
	cd joluj && $(EXE) server --buildDrafts

.PHONY: post
post:
	cd joluj && $(EXE) new content posts/$(filter-out $@,$(MAKECMDGOALS))/index.md

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  build   - Build the Hugo site"
	@echo "  server  - Start the Hugo development server"