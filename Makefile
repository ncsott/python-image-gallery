cl:  # shortcut
	$(MAKE) coding_standard
	$(MAKE) lint

lint:
	poetry run mypy src/
	poetry run ruff check src/
	poetry run ruff format --check src/
	poetry run bandit -x tests -r src/

coding_standard:
	poetry run ruff format src/
	poetry run ruff check --fix src/