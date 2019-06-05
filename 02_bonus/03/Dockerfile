FROM fedora
RUN dnf update; dnf install -y golang git; \
	git clone https://github.com/ZacheryFaria/ftsite; \
	go get go.mongodb.org/mongo-driver/bson; \
	go get kkn.fi/base62
WORKDIR ftsite
RUN go run *.go
