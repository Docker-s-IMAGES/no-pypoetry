FROM python:3.7

RUN python -m pip install -U pip poetry

WORKDIR /src

ONBUILD COPY pyproject.toml pyproject.toml
ONBUILD COPY poetry.lock poetry.lock

ONBUILD RUN poetry export -f requirements.txt --without-hashes -o /src/requirements.txt
