#From an alpine image you’ll add to your container your favorite text editor, vim or emacs, that will launch along with your container.
FROM alpine
RUN apk update
RUN apk add ed
ENTRYPOINT ed
