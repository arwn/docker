#From a debian image you will add the appropriate sources to create a TeamSpeak server, that will launch along with your container. It will be deemed valid if at least one user can connect to it and engage in a normal discussion (no far-fetched setup), so be sure to create your Dockerfile with the right options. Your program should get the sources when it builds, they cannot be in your repository.
#to install:
#	docker build --tag=ex01 .
#	docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
#	docker-machine ip ex01
FROM debian

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget bzip2 -y

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011
EXPOSE 41144

RUN wget https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2
RUN tar xvpf teamspeak3-server_linux_amd64-3.8.0.tar.bz2
RUN rm teamspeak3-server_linux_amd64-3.8.0.tar.bz2
WORKDIR teamspeak3-server_linux_amd64
RUN touch .ts3server_license_accepted
ENTRYPOINT ["sh","ts3server_minimal_runscript.sh"]
