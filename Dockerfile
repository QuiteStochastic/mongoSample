FROM mongo


RUN mkdir -p /etc/ssl
COPY ./mongo_cert.pem /etc/ssl
COPY ./mongo_key.pem /etc/ssl

RUN chmod 644 /etc/ssl/mongo_cert.pem
RUN chmod 644 /etc/ssl/mongo_key.pem


RUN mongod --sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongo_key.pem --sslCAFile /etc/ssl/mongo_cert.pem


