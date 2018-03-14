all:
	rm -rf public_html
	git clone https://github.com/ssebs/ssebs.com.git -l public_html
	docker build -t website .
	docker run -d website
run:
	docker run -d website
