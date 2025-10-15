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
