FROM nginx:alpine

# Aplica los parches de seguridad publicados por Alpine después del build
# de la imagen base. Sin esto, Trivy bloquea el deploy por CVEs HIGH en
# util-linux que ya tienen fix upstream.
RUN apk upgrade --no-cache

COPY index.html /usr/share/nginx/html/
COPY style.css  /usr/share/nginx/html/
COPY theme.js   /usr/share/nginx/html/

EXPOSE 80
