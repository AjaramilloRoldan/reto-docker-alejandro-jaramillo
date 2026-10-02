# Reto Docker – Alejandro Jaramillo

Servicio web en Docker (Nginx) que muestra en el navegador:

> **Reto completado exitosamente por el estudiante Alejandro Jaramillo**

## Estructura

| Archivo | Descripción |
|---|---|
| `index.html` | Página con el mensaje del reto |
| `Dockerfile` | Imagen basada en `nginx:alpine` |
| `docker-compose.yml` | Servicio `web` expuesto en el puerto `8080` |

## Cómo ejecutarlo

```bash
git clone https://github.com/AjaramilloRoldan/reto-docker-alejandro-jaramillo.git
cd reto-docker-alejandro-jaramillo
docker compose up -d --build
```

Luego abre **http://localhost:8080** en el navegador.

## Comandos útiles

```bash
docker compose ps        # ver el estado del contenedor
docker compose logs web  # ver los logs de Nginx
docker compose down      # detener y eliminar el contenedor
```
