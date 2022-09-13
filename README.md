
# desafio-lista-telefonica-docker

## Descrição


Neste desafio, você deve portar esta aplicação de [listagem telefônica](https://github.com/CAM-Tecnologia/desafio-lista-telefonica) para um contêiner Docker. Ela é uma aplicação Django desenvolvida em Python 3.

- A solução precisa ser implantada em contêineres Docker (versão 19.03.6 ou superior);
- O banco de dados utilizado precisa ser relacional (MariaDB, MySQL ou PostgreSQL);
- O banco de dados e a aplicação não podem estar no mesmo contêiner;
- Toda a implantação precisa ser automatizada via Docker-Compose;
- Todos os artefatos (código, arquivos de configuração, desenho da arquitetura...) desenvolvidos precisam estar disponíveis em um repositório de versionamento de código acessível pelo time de avaliadores;
- O desafio deve ser executável em ambientes Linux x86_64.

## Linha de pensamento

1. Alterar algumas coisas nos arquivos da aplicação. (desenvolvido)
2. Criação de um dockerfile para a aplicação lista telefonica. (desenvolvido)
3. Criação de um dockerfile para o banco de dados (mysql). (desenvolvido)
4. Criação de um docker-compose para automatizar o processo. (desenvolvido)

## Ferramentas usadas

1. [Docker](https://docs.docker.com/engine/install/ubuntu/)
2. [Docker-compose](https://docs.docker.com/compose/install/linux/)

## Alterações

Para evitar um problema com o docker e o django alterei o flag `DEBUG = True`, para `DEBUG = False`. Essa alteração foi feita no arquivo `settings.py`.

## Como rodar

Para rodar a aplicação e seus containers basta baixar os arquivos desse projeto. Depois disso no terminal com as ferramentas instaladas rodar o seguinte comando: `docker-compose up`.

Para ver a aplicação funcionando basta abrir o navegador e acessar `http://localhost:8000/`.
