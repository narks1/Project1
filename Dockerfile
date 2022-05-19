FROM nginx:latest

RUN mkdir /wiki
RUN mkdir /intra

COPY nginx/conf/intra.conf /etc/nginx/conf.d/
COPY nginx/conf/wiki.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80 8080
