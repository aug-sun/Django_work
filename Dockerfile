FROM python:3.10
COPY . /django_work
WORKDIR /django_work

# Postgres
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_DB_NAME=${POSTGRES_DB_NAME}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_PORT=${POSTGRES_PORT}

ENV DEBUG=${DEBUG}
ENV SECRET_KEY=${SECRET_KEY}
ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV DB_HOST=${DB_HOST}
ENV DB_PORT=${DB_PORT}
ENV TOKEN_ATS=${TOKEN_ATS}
ENV URL_ATS=${URL_ATS}

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

