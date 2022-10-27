#!/bin/bash

poetry install
poetry shell

git clone https://github.com/LineaLabs/lineapy.git
pip install ./lineapy --upgrade
