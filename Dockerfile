FROM golang:1.22

WORKDIR /app

COPY . .

RUN go mod tidy

WORKDIR /app/cmd/ordersystem

CMD ["go", "run", "main.go", "wire_gen.go"]