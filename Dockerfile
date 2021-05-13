FROM golang:1.16.0-stretch As Builder
ENV GO111MODULE=off
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags '-w' -o servicex

FROM scratch
WORKDIR /app
COPY --from=Builder /app/servicex .
CMD [ "/app/servicex" ]