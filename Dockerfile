FROM Ubuntu
RUN apt-get update
RUN apt-get -y install python python3-pip
RUN pip3 install flask

COPY ./opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
