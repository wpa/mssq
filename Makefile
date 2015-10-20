build:
	docker build -t wrpa/mssq .

start:
	docker run -p 1883:1883 -d wrpa/mssq
