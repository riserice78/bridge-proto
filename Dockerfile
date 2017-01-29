FROM golang:1.7.5

RUN go get github.com/revel/revel

RUN go get github.com/revel/cmd/revel

RUN revel new bridge-proto

COPY app.yaml src/bridge-proto/
COPY app src/bridge-proto/app/
COPY conf src/bridge-proto/conf/
COPY messages src/bridge-proto/messages/
COPY public src/bridge-proto/public/
COPY test-svg src/bridge-proto/test-svg/

ENTRYPOINT revel run bridge-proto dev 8080

EXPOSE 8080
