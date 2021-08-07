#PROYECTO CLOUD COMPUTING

FROM nginx
#FROM python:3.8-slim-buster

#WORKDIR /aeiou

COPY ./dist /usr/share/nginx/html

#CMD [ "python", "index.html" ]