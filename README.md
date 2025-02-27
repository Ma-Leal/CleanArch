# Clean Arch

- ✅ **Endpoint REST**
- ✅ **Service ListOrders com GRPC**
- ✅ **Query ListOrders GraphQL**

## 🚀 Como Rodar o Projeto
```sh
docker compose up -d
```

Isso iniciará os seguintes serviços:
- **MySQL** (porta `3306`)
- **RabbitMQ** (porta `5672` e UI na `15672`)
- **Aplicação** (portas `8000` para REST, `8080` para GraphQL e `50051` para GRPC)

### 🔥 Testando a API
A maneira mais rápida de validar a listagem das orders é acessando:
```
http://localhost:8000/list
```

Caso prefira testar via terminal, use:
```sh
curl -X GET http://localhost:8000/list
```

Para testar as queries GraphQL, acesse:
```
http://localhost:8080/graphql
```

## 🛠 Tecnologias Utilizadas
- **Go**
- **Docker & Docker Compose**
- **MySQL**
- **gRPC**
- **GraphQL**
- **RabbitMQ**

