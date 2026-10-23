# 🐳 Demo Docker en Pipeline CI/CD

Repositorio de demostración para la exposición de **Docker en DevOps** (Sesión 12 - CI/CD).

## 📌 ¿Qué demuestra este proyecto?
- Empaquetar una app Flask en una imagen Docker.
- Automatizar el build y prueba con **GitHub Actions** en cada `push`.

## 🛠️ Tecnologías
- Python 3.9 + Flask
- Docker
- GitHub Actions

## 🚀 Ejecución local

```bash
# Construir la imagen
docker build -t mi-app-docker .

# Ejecutar el contenedor
docker run -d -p 5000:5000 mi-app-docker

# Probar
curl http://localhost:5000/health