FROM swaggerapi/swagger-ui

RUN mkdir /usr/share/nginx/html/schemas

COPY personnes.yaml /usr/share/nginx/html/personnes.yaml
COPY schemas/ /usr/share/nginx/html/schemas

ENV API_URL=http://referentiel-personnes-mock

RUN chmod 755 /usr/share/nginx/docker-run.sh

EXPOSE 8080

CMD /usr/share/nginx/docker-run.sh