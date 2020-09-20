FROM tiangolo/uvicorn-gunicorn:python3.8

LABEL maintainer="Brice Aïello <brice.aiello@me.com>"

# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
