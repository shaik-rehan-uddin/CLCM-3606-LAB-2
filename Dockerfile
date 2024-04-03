FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y apache2 php php-mysql 

RUN rm -rf /var/www/html/index.html

ARG RDS_USERNAME
ARG RDS_PASSWORD
ARG RDS_ENDPOINT
ARG RDS_DATABASE

ENV RDS_USERNAME=$RDS_USERNAME \
  RDS_PASSWORD=$RDS_PASSWORD \
  RDS_ENDPOINT=$RDS_ENDPOINT \
  RDS_DATABASE=$RDS_DATABASE

RUN echo "export RDS_USERNAME=${RDS_USERNAME}" | tee -a /etc/apache2/envvars
RUN echo "export RDS_PASSWORD=${RDS_PASSWORD}" | tee -a /etc/apache2/envvars
RUN echo "export RDS_ENDPOINT=${RDS_ENDPOINT}" | tee -a /etc/apache2/envvars
RUN echo "export RDS_DATABASE=${RDS_DATABASE}" | tee -a /etc/apache2/envvars

COPY application-code/ /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]