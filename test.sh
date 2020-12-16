#!/bin/sh

python3 -m pytest --doctest-modules PROJECT_NAME
python3 -m pytest --doctest-modules tests

python3 -m flake8 PROJECT_NAME
python3 -m black --check PROJECT_NAME || read -p "Run formatter? (y/N): " yn; [[ $yn = [yY] ]] && python3 -m black PROJECT_NAME
python3 -m isort --check --force-single-line-imports PROJECT_NAME || read -p "Run formatter? (y/N): " yn; [[ $yn = [yY] ]] && python3 -m isort --force-single-line-imports PROJECT_NAME
