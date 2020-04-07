FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1

RUN apk add --no-cache --virtual .build-deps gcc libc-dev libffi-dev openssl-dev make \
    && python -m pip install -U pip poetry \
    && apk del .build-deps gcc libc-dev libffi-dev openssl-dev make

WORKDIR /src

ONBUILD COPY pyproject.toml pyproject.toml
ONBUILD COPY poetry.lock poetry.lock

ONBUILD RUN poetry export -f requirements.txt --without-hashes -o /src/requirements.txt
