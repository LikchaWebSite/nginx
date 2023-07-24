# syntax=docker/dockerfile:1

FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

RUN mkdir -p /data/nginx/cache

COPY nginx.conf /etc/nginx/conf.d/default.conf
