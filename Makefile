fmt:
	pnpx prettier --write . --plugin-search-dir=. ./**/*.svelte

is_fmt:
	pnpx prettier --check . --plugin-search-dir=. ./**/*.svelte


.PHONY: fmt is_fmt
