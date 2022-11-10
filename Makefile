.PHONY: install format lint test sec

install: # comando - make install
	@poetry install # @ para não monstrar o comando
format:
	@isort .
	@blue .
lint:
	@blue . --check
	@isort . --check
	@prospector --with-tool pep257 --doc-warning
