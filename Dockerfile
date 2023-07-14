# syntax=docker/dockerfile:1

FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY common.conf location.conf ssl.conf /etc/nginx/conf.d/

COPY nginx.conf /etc/nginx/conf.d/default.conf