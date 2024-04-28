VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
TARGETARH=amd64
APP=$(shell basename $(shell git remote get-url origin)| cut -d '.' -f1)


format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

get:
	go get

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARH=${TARGETARH} go build -v -o kbot -ldflags "-X="github.com/s94moiseiev/kbot/cmd.appVersion=${VERSION}

image:
	docker build . --platform=linux/amd64 -t ghcr.io/${REGISTRY}/${APP}:${VERSION}-${TARGETARH}

push:
	docker push ghcr.io/${REGISTRY}/${APP}:${VERSION}-${TARGETARH}

clean:
	docker rmi ${REGISTRY}/${APP}:${VERSION}-${TARGETARH}
