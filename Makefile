.PHONY: build
build:
	docker build -t agrrh/mongos:4.0.6 .


push:
	docker push agrrh/mongos:4.0.6
