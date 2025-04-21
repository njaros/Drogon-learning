FROM debian

WORKDIR /dev/app

# Drogon requirements from doc https://drogonframework.github.io/drogon-docs/#/ENG/ENG-02-Installation
RUN apt-get update -y && apt-get upgrade -y && \
	# version management tool
	apt-get install -y git \
	# compilers C/C++
	gcc g++ \
	# file linker
	cmake \
	# json lib
	libjsoncpp-dev \
	# UUID lib
	uuid-dev \
	# Compressed transmission lib
	zlib1g-dev \
	# HTTPS protocol lib
	openssl libssl-dev \
	# PostgreSQL database
	postgresql-all

RUN git clone https://github.com/drogonframework/drogon

# dev mode
ENTRYPOINT ["dev_script.sh"]

# release mode
# ENTRYPOINT["./bin/run", "opts..."]