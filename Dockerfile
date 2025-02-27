FROM golang:latest AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o server ./cmd/ordersystem/main.go ./cmd/ordersystem/wire_gen.go

FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache libc6-compat

COPY --from=builder /app/server .

COPY cmd/ordersystem/.env .

RUN chmod +x /app/server

EXPOSE 8000 8080 50051

CMD ["./server"]