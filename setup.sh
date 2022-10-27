#!/bin/bash

poetry install
poetry shell

git submodule init
git submodule update
pip install ./lineapy --upgrade
