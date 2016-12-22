FROM mongo


RUN mkdir -p /etc/ssl
COPY ./cert.pem /etc/ssl
RUN chmod 644 /etc/ssl/cert.pem
RUN mongod --sslMode requireSSL --sslPEMKeyFile /etc/ssl/cert.pem




