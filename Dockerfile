FROM nginx:alpine
WORKDIR /src/helm

COPY ./dist ./charts
COPY ./index.yaml .
COPY ./robots.txt .

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf