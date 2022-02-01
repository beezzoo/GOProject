PREFIX = /cmd

build:
	GOARCH=wasm GOOS=js go build -o /web/app.wasm -mod=vendor
	go build

run: build
	./cmd/main
