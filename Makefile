DOCKER_IMAGE_NAME="raphaelsampaio/spark-app"
CONTAINER_NAME="spark-app"

build:
	@docker build -t  ${DOCKER_IMAGE_NAME} .

run:
	@docker run --name  ${CONTAINER_NAME} -it ${DOCKER_IMAGE_NAME} 

stop:
	@-docker kill ${CONTAINER_NAME}
	@-docker rm ${CONTAINER_NAME}