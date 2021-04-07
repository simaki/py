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
curl -s https://raw.githubusercontent.com/psf/black/master/docs/compatible_configs/isort/pyproject.toml >> pyproject.toml
echo "force_single_line = true" >> pyproject.toml
```

```sh
curl -s https://raw.githubusercontent.com/simaki/python-project/master/test.sh > test.sh
sed -i '' "s/PROJECT_NAME/$((>&2 echo "Enter project name: \c") && read name && echo "$name\c")/g" test.sh
```
