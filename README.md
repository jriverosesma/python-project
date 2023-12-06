[![Unit tests](https://github.com/jriverosesma/my-package/actions/workflows/unit_tests.yaml/badge.svg)](https://github.com/jriverosesma/my-package/actions/workflows/unit_tests.yaml)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/jriverosesma/my-package?include_prereleases&label=latest%20release&color=blue)](https://github.com/jriverosesma/my-package/releases)
[![PyPI version](https://img.shields.io/pypi/v/my-package.svg?color=blue)](https://pypi.org/project/my-package/)

# Python Project Template
This is a simple and effective Python project template.

## Installation

### Users

```bash
pip install my-package
```

### Developers

```bash
conda create -y -n my-package python=3.10 --no-default-packages
conda activate my-package
python -m pip install --upgrade pip
pip install -e .[all]
pre-commit install
```

## Features
- Template `pyproject.toml`.
- Sample `README.md` with badges and index.
- Lightweight pre-commits: automatic formatting.
- Simple and generic unit tests and release workflows.
- Issue and PR templates.
- Sample `.gitignore` and `.gitattributes`.
- Sample `.editorconfig`.
- Sample `NOTICES` (generated using `pip-licenses`), `LICENSE` and `CHANGELOG`.
