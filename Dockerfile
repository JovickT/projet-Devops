FROM nginx
RUN apt-get update && \
    apt-get install -y net-tools iproute2 iputils-ping &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*
<<<<<<< HEAD
COPY . /usr/share/nginx/html
=======
COPY . /usr/share/nginx/html
>>>>>>> cc4f1144765fde9ccd69861dac626e0b8846b24e
