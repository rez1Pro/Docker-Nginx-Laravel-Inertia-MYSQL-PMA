FROM nginx:mainline

COPY ./src /usr/app/

RUN apt-get update && apt-get install nginx-common -y
RUN apt-get update && apt-get install libnginx-mod-rtmp -y
RUN apt-get install nginx -y
RUN apt-get install nginx-full -y

USER root

WORKDIR /usr/app/

CMD ["nginx", "-g", "daemon off;"]