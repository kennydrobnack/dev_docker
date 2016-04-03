VERSION = 0.9.18_BUILD1
NAME = kennydrobnack/dev_docker

build:
	docker build -t ${NAME}:${VERSION} .

push: build
	docker push ${NAME}:${VERSION}

push_latest: build
	docker push ${NAME}:latest
