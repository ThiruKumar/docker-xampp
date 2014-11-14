FROM ubuntu:14.04
RUN apt-get update \
 && apt-get upgrade -yq \
 && apt-get install -yq \
    wget git lib32stdc++6 \
 && wget http://sourceforge.net/projects/xampp/files/XAMPP%20Linux/1.6.8a/xampp-linux-1.6.8a.tar.gz/download \
 && tar xfz download \
 && mv lampp /opt\
 && rm -rf download
RUN sed -i 's/*_64)/*_69)/g' /opt/lampp/lampp \
 && echo "/opt/lampp/lampp startapache" > /opt/lampp/start \
 && echo "/opt/lampp/lampp startmysql" >> /opt/lampp/start \
 && echo "tail -f /opt/lampp/logs/error.log" >> /opt/lampp/start \
 && chmod +X /opt/lampp/start
 CMD ["/opt/lampp/lampp"]
