FROM golang:1.23.1

WORKDIR /app

COPY go.* ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /label-mutate

CMD ["/label-mutate"]

EXPOSE 4567

