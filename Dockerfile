FROM debian:stable
WORKDIR /app
COPY . .
RUN apt-get update && apt-get -y install curl git
RUN setup.sh
CMD my_package_script
