FROM python:3.8-slim-buster

RUN pip3 install --upgrade pip
RUN pip3 -V

RUN pip3 install virtualenv
RUN python3 -m venv venv

RUN alias venv="source $HOME/venv/bin/activate"

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN mkdir /ProjetoCAM
WORKDIR /ProjetoCAM
RUN mkdir lista_telefonica
COPY lista_telefonica lista_telefonica
RUN mkdir phones
COPY phones phones
COPY manage.py /ProjetoCAM

RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
