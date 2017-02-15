VERSION  := 0.2.0
TARGET   := chronos_exporter
TEST     ?= ./...

default: test build

deps:
	glide install

test:
	go test -v -run=$(RUN) $(TEST)

build: clean
	go build -v -o bin/$(TARGET)

clean:
	rm -rf bin/
