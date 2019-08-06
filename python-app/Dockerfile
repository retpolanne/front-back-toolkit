FROM python:3.7

WORKDIR /usr/src/app

COPY . .
RUN pip3 install pipenv
RUN pipenv install

ENTRYPOINT tail -f /dev/null
