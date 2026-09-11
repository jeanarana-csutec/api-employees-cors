FROM python:3-slim //imagen
WORKDIR /programas/api-employees //crea esta c
RUN pip3 install "fastapi[standard]"
RUN pip3 install pydantic
RUN pip3 install mysql-connector-python
COPY . . //copia todo el codigo en la carpeta creada
CMD ["fastapi", "run", "./main.py", "--port", "8000"] //Ejecuta ese comando donde va a escuchar 
en el puerto 8000
