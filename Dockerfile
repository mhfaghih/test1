FROM python:3.8.9-alpine3.13

WORKDIR /home/app

#If we add the requirements and install dependencies first, docker can use cache if requirements don't change
ADD requirements.txt /home/app
RUN pip install --no-cache-dir -r requirements.txt

ADD . /home/app
CMD flask run --host 172.17.0.2

EXPOSE 8000