VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=$(shell uname -os | tr "[:upper:]" "[:lower:]")
ARH=${shell uname -m}

format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

build:
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARH=${ARH} go build -v -o kbot -ldflags "-X="github.com/s94moiseiev/kbot/cmd.appVersion=${VERSION}

clean:
	rm -rf kbot

