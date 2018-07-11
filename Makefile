all:
	rm -rf public_html
	git clone https://github.com/ssebs/ssebs.com.git -l public_html
	make build
	make run
build:
	docker build -t website .
	docker build -t ssebs/ssebs-www:latest .
run:
	docker run --restart unless-stopped -d -p 80:80 --name ssebs-www website
stop:
	@docker stop ssebs-www
	@docker rm ssebs-www
publish:
	docker build -t ssebs/ssebs-www:latest .
	docker push ssebs/ssebs-www
