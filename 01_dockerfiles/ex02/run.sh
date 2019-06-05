docker build -t ft-rails:on-build -f ft-rails/Dockerfile .
docker build -t railsapp-img .
docker run -d --name bullshit -it --rm -p 3000:3000 railsapp-img
