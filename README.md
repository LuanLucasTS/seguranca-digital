<h1 align="center">Segurança Digital</h1>

<p align="center"><b><i>Esse projeto baseado e refeito totalmente a partir <a href='https://github.com/Lissy93/personal-security-checklist/tree/master' >desse outro</a></i></b><p/>

## Sobre o projeto

O código foi escrito do zero, utilizando python com o framawork Flask, HTML, css com o framawork Bootstrap e um pouco de javascript.
<br>
<p align="center"><img width="100%" src="https://github.com/LuanLucasTS/seguranca-digital/blob/main/print/1.png"></p>

## Instalação Docker

Crie o arquivo `.env` e configure as seguintes variaveis:
~~~
DB_HOST=ENDEREÇO-BD
DB_USER=USUARIO-BD
DB_PASSWORD=SENHA-BD
DB_DATABASE=BD
~~~~

Crie o arquivo `Dockerfile` e altere de acordo com suas preferências

~~~
FROM python
WORKDIR /sistemas
RUN git clone "https://github.com/LuanLucasTS/seguranca-digital.git"
RUN pip install mysql-connector-python~=8.2.0
RUN apt update && apt install tzdata -y
RUN pip install bcrypt~=4.2.0
RUN pip install Flask~=3.0.3
RUN pip install cryptography~=43.0.0
ENV TZ="America/Campo_Grande"
EXPOSE 6060
WORKDIR /sistemas/seguranca-digital
CMD ["python", "app.py"]
~~~

Logo após, execute `docker build -t seguranca-digital .` para criar a imagem do container e depois `docker run seguranca-digital` para subir o container.

## Instalação direto no sistema

- Clone o repositório `git clone "https://github.com/LuanLucasTS/seguranca-digital.git`
- Crie o arquivo `.env` dentro da pasta clonada e edite as variaveis de acordo com sua configuração
- Caso queira alterar a porta de execução da aplicação, edite a ultima linha no arquivo `app.py` onde se encontra `port=6060`
- Execute o comando `Python3 app.py` para iniciar a aplicação
- Acesse o endereço `http://[SEU_IP]:[SUA_PORTA]`


