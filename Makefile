help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

fmt: ## Format the code-base
	pnpx prettier --write . --plugin-search-dir=. ./**/*.svelte

is_fmt: ## Check is the code-base properly formatted
	pnpx prettier --check . --plugin-search-dir=. ./**/*.svelte

verify: fmt ## Run all the repository requirement before making a commit
is_verified: is_fmt ## Check if the repository complies with the requirement in CI.


.PHONY: help fmt is_fmt verified is_verified
.DEFAULT_GOAL := help
