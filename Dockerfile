FROM debian:8
RUN apt-get update
RUN apt-get -y install wget

# See: http://cc65.github.io/cc65/getting-started.html
#      https://software.opensuse.org/download.html?project=home%3Astrik&package=cc65
RUN echo 'deb http://download.opensuse.org/repositories/home:/strik/Debian_8.0/ /' > /etc/apt/sources.list.d/cc65.list 
RUN wget -nv http://download.opensuse.org/repositories/home:strik/Debian_8.0/Release.key -O Release.key
RUN apt-key add - < Release.key
RUN apt-get update
RUN apt-get -y install cc65
