FROM golang:1.24.2-alpine

WORKDIR /usr/src/koans

COPY . .

# Initialize Go module if go.mod doesn't exist
RUN if [ ! -f go.mod ]; then go mod init go-koans; fi

CMD ["go", "test", "./..."]
