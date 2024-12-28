FROM  ubuntu
MAINTAINER anusha
RUN apt-get update  -y  && apt-get install
Run apt-get install -y vim curl tree wget
COPY index.html /user/share/ngnix/html/index.html
ENV JAVA_HOME=/user/bin/java
USER root
WORKDIR /usr/share/ngnix/html/
VOLUME /myvol
EXPOSE 80
CMD ["service","ngnix","start"]

