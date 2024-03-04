FROM ubuntu

RUN apt update -y && \
    apt install -y git nginx

RUN rm -rf /var/www/html/

RUN git clone https://github.com/codeboylal/lal-personal-website.git /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon-off;"]

