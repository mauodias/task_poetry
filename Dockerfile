FROM python:3.11-slim

ENV POETRY_VERSION=1.4.2
ENV POETRY_HOME=/usr/local

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://taskfile.dev/install.sh | sh -s -- -b /usr/local/bin && \
    curl -sSL https://install.python-poetry.org | python -

WORKDIR /app

CMD ["bash"]