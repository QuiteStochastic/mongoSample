FROM mongo


RUN mongod --sslMode requireSSL --sslCAFile ./cert.pem




