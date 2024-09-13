# Usar una imagen base de Nginx
FROM nginx:alpine

# Copiar los archivos estáticos al directorio de Nginx
COPY _site /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80