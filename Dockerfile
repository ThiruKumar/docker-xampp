FROM ubuntu:14.10
RUN apt-get update \
 && apt-get upgrade -yq \
 && apt-get install -yq \
    wget git lib32stdc++6 \
 && wget http://sourceforge.net/projects/xampp/files/XAMPP%20Linux/1.6.8a/xampp-linux-1.6.8a.tar.gz/download \
 && tar xfz download \
 && mv lampp /opt\
 && rm -rf download \
 && ls -aoh /opt/lampp \
 && sed -i 's/*_64)/*_69)/g' > /opt/lampp/lampp \
 && cat /opt/lampp/lampp
