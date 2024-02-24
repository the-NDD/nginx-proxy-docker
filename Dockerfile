FROM nginx

COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN apt-get update \
    && apt-get install -y vim \
    && rm -rf /var/lib/apt/lists/*

CMD ["nginx", "-g", "daemon off;"]