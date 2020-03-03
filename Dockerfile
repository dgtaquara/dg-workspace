FROM python

RUN mkdir /dgtaquara
WORKDIR /dgtaquara
COPY requirements.txt /dgtaquara/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN django-admin startproject meusite .

ENTRYPOINT python manage.py runserver 0.0.0.0:8080

EXPOSE 8080