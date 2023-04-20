FROM python:3.10
LABEL MAINTAINER="Krerk"

RUN mkdir /app
COPY main.py /app
RUN chmod +x /app/main.py
WORKDIR /app

ARG secret_user
ENV secret_user $secret_user

CMD python3 main.py
