FROM python:3.13.0-alpine3.19
LABEL maintainer="acazivic.github.com"

ENV PYTHONUNBUFEREED 1


COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000


RUN python -m venv /pyu && \
    /py/bin/pip installl --updgrade pip && \
    /py/bin/pip installl -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

ENV PATH="py/bin:$PATH"
USER django-user

