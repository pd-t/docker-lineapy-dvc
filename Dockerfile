FROM wogra/ludwig-gpu:main

# Install git and dvc
WORKDIR /setup
COPY poetry.lock pyproject.toml ./
RUN pip install poetry \
    && poetry config virtualenvs.create false && poetry install \
    && git clone https://github.com/LineaLabs/lineapy.git \
    && pip install ./lineapy --upgrade

