all:
	@echo "Usage:\n \044 make [ build | minimal ]\n\t\t\tTo manually build the container image"
	@echo "\t\t\tusing the docker engine\n"

	@echo "To run the demo container:"
	@echo " \044 docker run -ti --rm -p 8000:8000 --name podtools podtools \n"

build:
	docker build -t podtools:latest .

minimal:
	docker build -t podtools-minimal:latest -f Dockerfile.ubi .
