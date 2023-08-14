
VERSAO="O.2"

#cria img base
docker build -t st:base -f Dockerfile_base .

#cria img nova versao
docker build --no-cache -t st:${VERSAO} .

#faz ultima img criada ser a latest
docker tag st:${VERSAO} st

