fmt:
	pnpx prettier --write . --plugin-search-dir=. ./**/*.svelte

is_fmt:
	pnpx prettier --check . --plugin-search-dir=. ./**/*.svelte

verify: fmt
is_verified: is_fmt


.PHONY: fmt is_fmt verified is_verified
