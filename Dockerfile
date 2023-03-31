FROM ubuntu:latest
WORKDIR /home/Docker-project/srv

RUN apt update
RUN apt install -y python3 && apt install -y python3-pip && pip3 install Flask && pip install psycopg2-binary && pip3 install configparser
RUN cd /home/Docker-project/srv

CMD ["python3", "/home/Docker-project/srv/web.py]
