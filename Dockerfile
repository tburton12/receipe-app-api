FROM python:3.8-slim-buster
MAINTAINER tburton

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/

#COPY ./requirements.txt /requirements.txt
#RUN pip install -r /requirements.txt
#
#RUN mkdir /app
#COPY ./app /app
#
#RUN useradd --no-log-init user
#RUN chown user:user -R /app/
#USER user