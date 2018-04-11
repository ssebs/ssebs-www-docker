all:
	rm -rf public_html
	git clone https://github.com/ssebs/ssebs.com.git -l public_html
	docker build -t website .
	docker run -d -p 80:80 --name ssebs-www website
docker:
	docker build -t website .
build:
	docker build -t website .
run:
	docker run -d -p 80:80 --name ssebs-www website 
stop:
	@docker stop ssebs-www
	@docker rm ssebs-www
