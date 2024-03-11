# Docker Ubuntu

Essa imagem é baseada no Ubuntu 22.04 LTS e vai ser utilizada para criar um container com o Ubuntu e usado na disciplina de Operações na Nuvem.

## Como usar

1. Para usar essa imagem, você precisa ter o Docker instalado. Se você não tem, siga as instruções de instalação no site oficial do [Docker](https://docs.docker.com/get-docker/).

2. Instale o Docker Compose:

```bash
sudo apt install docker-compose
```

3. Instale o Git:

```bash
sudo apt install git
```

4. Clone o repositório e entre na pasta do projeto:

```bash
git clone <url-do-repositorio>
cd docker-ubuntu
```

5. Ajuste as configurações do arquivo `.env`:

```bash
cp .env.example .env
```
6. Execute o container:

```bash
docker-compose up -d
```

7. Acesse o container:

```bash
docker exec -it ubuntu-cloud /bin/bash
```

8. Para sair do container:

```bash
exit
```

## Autor

* **Nome**: Luiz Schons
* **Email**: sschonsluuiz@gmail.com

## Licença

Este projeto está licenciado sob a licença MIT - consulte o arquivo [LICENSE.md](LICENSE) para obter detalhes.


