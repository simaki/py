#!/bin/sh

python3 -m pytest --doctest-modules project-name
python3 -m pytest --doctest-modules tests

python3 -m flake8 project-name
python3 -m black --check project-name
python3 -m isort --check --force-single-line-imports project-name
