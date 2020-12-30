# Template of Python projects

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

This repository provides a template of Python projects.

```sh
curl -s https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore > .gitignore
```

```sh
poetry init
```

```sh
curl -s https://raw.githubusercontent.com/simaki/python-project/master/.black >> pyproject.toml
curl -s https://raw.githubusercontent.com/psf/black/master/docs/compatible_configs/flake8/.flake8 > .flake8
sed -i -e "/extend-ignore/s/$/,W503/" .flake8
curl -s https://raw.githubusercontent.com/psf/black/master/docs/compatible_configs/isort/pyproject.toml >> pyproject.toml
echo "force_single_line = true" >> pyproject.toml
```

```sh
curl -s https://raw.githubusercontent.com/simaki/python-project/master/test.sh > test.sh
sed -i '' "s/PROJECT_NAME/$((>&2 echo "Enter project name: \c") && read name && echo "$name\c")/g" test.sh
```

* code formatters:
  - [Black](https://github.com/psf/black): [Black official configurations](https://github.com/psf/black#pyprojecttoml)
  - [isort](https://github.com/PyCQA/isort): [Black compatible configurations](https://github.com/psf/black/blob/master/docs/compatible_configs.md#isort), [force_single_line](https://pycqa.github.io/isort/docs/configuration/options/#force-single-line)
  - [Flake8](https://flake8.pycqa.org/en/latest/): [Black compatible configurations](https://github.com/psf/black/blob/master/docs/compatible_configs.md#isort), ignore [W503](https://www.flake8rules.com/rules/W503.html)
