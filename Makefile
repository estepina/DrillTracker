.PHONY: all style mypy style-check lint test deps

package?=drill_tracker tests manage.py

all: deps test

style:
	uv run black $(package)
	uv run ruff check $(package)
	uv run isort $(package)

mypy:
	uv run mypy --enable-error-code ignore-without-code $(package)

style-check:
	uv run black --check --diff $(package)
	uv run ruff check $(package)
	uv run isort --check --diff $(package)

lint: style mypy

test: style lint
	uv run pytest .

deps:
	uv pip install -U mypy ruff black isort
