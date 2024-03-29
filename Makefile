.PHONY: lint
lint:
	golangci-lint run -v -c .golangci.yml ./code/...

.PHONY: build
build:
	go build -o ./bin/app ./code

.PHONY: test
test:
	go test -v -race ./code