# Imagen base oficial de Python ligera
FROM python:3.9-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos primero requirements (aprovecha caché de Docker)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto del código
COPY app.py .

# Puerto que expone la app
EXPOSE 5000

# Comando de arranque
CMD ["python", "app.py"]