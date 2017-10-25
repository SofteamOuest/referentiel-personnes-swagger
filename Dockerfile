FROM swaggerapi/swagger-ui

RUN mkdir /usr/share/nginx/html/schemas

COPY personnes.yaml /usr/share/nginx/html/personnes.yaml
COPY schemas/ /usr/share/nginx/html/schemas

ENV API_URL=https://meltingpoc.k8.wildwidewest.xyz/api-personnes-swagger/personnes.yaml

RUN chmod 755 /usr/share/nginx/docker-run.sh

EXPOSE 8080

CMD /usr/share/nginx/docker-run.sh