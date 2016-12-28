FROM mongo


RUN mkdir -p /etc/ssl
COPY ./mongo.pem /etc/ssl
COPY ./ca_cert.pem /etc/ssl

RUN chmod 644 /etc/ssl/mongo.pem
RUN chmod 644 /etc/ssl/ca_cert.pem


CMD mongod --sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongo.pem --sslCAFile /etc/ssl/ca_cert.pem


