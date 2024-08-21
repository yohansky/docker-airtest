FROM golang:1.22

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

RUN go install github.com/air-verse/air@latest

COPY go.* ./


# RUN go get github.com/air-verse/air

# RUN air init
# COPY . .


# RUN curl -sSfL https://raw.githubusercontent.com/air-verse/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

# EXPOSE 8080

# CMD [ "air", "-c", ".air.toml" ]
# CMD ["air"]
# ENTRYPOINT ["/bin/sh","-c","air","init"]