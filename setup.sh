#!/usr/bin/env bash
curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > ~/miniconda3.sh
chmod +x ~/miniconda3.sh
~/miniconda3.sh -b -p $HOME/miniconda3
export PATH=$HOME/miniconda3/bin:$PATH
rm ~/miniconda3.sh
conda init
conda create -y -n my-package python=3.10 --no-default-packages
conda activate my-package
python -m pip install --upgrade pip
pip install -e .[all]
pre-commit install
