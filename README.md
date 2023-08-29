# API
## Création de l'API
### Création d’une app Rails en mode API (donc sans front)
- rails new my_api --api

### Rajout de 3 gems : devise, devise-jwt, et rack-cors
- bundle add devise devise-jwt rack-cors

### Installation de Devise et de la table User
- rails g devise:install
- rails g devise User

### Génération de la Denylist
La DenyList est une méthode révocation de Token JWT, en gros à chaque fois qu'un utilisateur se déconnecte ou que le token est expiré un nouveau token sera généré pour cet utilisateur

- rails g model jwt_denylist jti:string exp:datetime

### Devise API JWT Controllers for Sessions and Registrations 🧒
#### Créer le fichier members_controller.rb
La méthode show permettra de s’authentifier avec un token à la place de l’email et du password


