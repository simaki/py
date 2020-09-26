# Template of Python projects

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

This repository provides a template of Python projects.

## .gitignore

macOS + Vim + Python

```sh
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore > .gitignore
curl https://raw.githubusercontent.com/github/gitignore/master/Global/Vim.gitignore >> .gitignore
curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore >> .gitignore
```

## Poetry

```sh
poetry init
```

## Code formatters

Use [Black](https://github.com/psf/black), [isort](https://github.com/PyCQA/isort) and [Flake8](https://flake8.pycqa.org/en/latest/).

```sh
curl https://raw.githubusercontent.com/simaki/python-project/master/.black > pyproject.toml
curl https://raw.githubusercontent.com/simaki/python-project/master/.isort > pyproject.toml
curl https://raw.githubusercontent.com/simaki/python-project/master/.flake8 >> .flake8
```

### Black

* [Black official configurations](https://github.com/psf/black#pyprojecttoml)

### isort

* [Black compatible configurations](https://github.com/psf/black/blob/master/docs/compatible_configs.md#isort)
* [force_single_line](https://pycqa.github.io/isort/docs/configuration/options/#force-single-line): true

### Flake8

* [Black compatible configurations](https://github.com/psf/black/blob/master/docs/compatible_configs.md#isort)
* ignore: [W503](https://www.flake8rules.com/rules/W503.html)

## Testing

```sh
curl https://raw.githubusercontent.com/simaki/python-project/master/test.sh > test.sh
sed -e 's/project-name/[project-name]/g' test.sh
```
