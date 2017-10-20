# referentiel-personnes-api

## Ceci est l'api du référentiel des personnes.

Utilisation de [Swagger OAS](https://swagger.io/).

Spécifications de [Swagger OpenApi](https://swagger.io/specification/) et [examples](https://github.com/OAI/OpenAPI-Specification/tree/OpenAPI.next/examples/v3.0).

Outils:
- [Swagger editor](https://editor.swagger.io//#/) 

- [Swagger-ui](https://github.com/swagger-api/swagger-ui)

Pour faciliter le développement, Swagger-ui a été intégré au projet.
Pour l'utiliser il faut:
- avoir Apache ou nginx
- créer un virtualhost sur le répertoire "referentiel-personnes-swagger"
- ajouter les headers suivants au virtualhost:
Access-Control-Allow-Origin "*"
Access-Control-Allow-Methods "GET, POST, DELETE, PUT, PATCH, OPTIONS"
Access-Control-Allow-Headers "Content-Type, api_key, Authorization"

Example avec Apache:

    <VirtualHost *:XXX>
    	ServerName referentiel-personnes-swagger
    	
    	Header set Access-Control-Allow-Origin "*"
    	Header set Access-Control-Allow-Methods "GET, POST, DELETE, PUT, PATCH, OPTIONS"
    	Header set Access-Control-Allow-Headers "Content-Type, api_key, Authorization"
    
    	Alias "/" "...../referentiel-personnes-swagger/"
    
    	<Directory "...../referentiel-personnes-swagger/">
    		AllowOverride All 
    		Require all granted
    	</Directory> 
    </VirtualHost>




Swagger-ui est accessible depuis l'url:
http://localhost:port_virtual_host/swagger-ui/

Ouvrir l'api http://localhost:XXX/personnes.yaml

