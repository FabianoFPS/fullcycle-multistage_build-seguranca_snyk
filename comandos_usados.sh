# Monta a imagem
docker build -t fabianofps/docker-scan-go .

# Roda o container e deleta ao fechar
docker run --rm fabianofps/docker-scan-go

# scan
docker scan --file Dockerfile fabianofps/docker-scan-go

