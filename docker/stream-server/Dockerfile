FROM amd64/golang:1.14-alpine3.11

RUN apk add --no-cache git
RUN git clone https://github.com/aler9/rtsp-simple-server.git  /rtsp
RUN cd /rtsp && git checkout   ba6c27a49e676bee48523bcd2473c1820fb12204
WORKDIR /rtsp
RUN go mod download
RUN GOPROXY=direct go build -o /out .
ENTRYPOINT ["/out"]
