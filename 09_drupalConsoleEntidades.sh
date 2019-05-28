## Ejercicio 1
#Entidades de configuración
#
#1. Crea el módulo Bits Entities (bits_entities). 
#
#  Implementa un hook que actúe en la carga de las entidades de tipo node.
#
#  Si el nodo es de tipo artículo, modifica su título  añadiendo el prefijo: Article: (traducible). Por ejemplo, si tenemos un nodo con título "Lorem Ipsum", al cargarse el título mostrado será "Artículo: Lorem Ipsum".
#
#2. Implementa el hook adecuado para actuar cuando se cree un nuevo usuario. 
#
#  Dentro del hook, crea un nuevo nodo de tipo Página básica, cuyo autor será el usuario creado. El título del nodo será: 
#
#  "Presentación de Nombre" (donde nombre es el nombre de usuario). 
#
#3. Implementa un hook que actúe cuando se vaya a eliminar un usuario. 
#
#  Dentro del hook, elimina todos los nodos cuyo autor sea el usuario a eliminar

## Ejercicio 2
#Entidades de contenido
#
#1. Crea la entidad de contenido Message (bits_entities_message) en el módulo Bits Entities (debes crear primero el módulo).
#
#2. Cada Mensaje tendrá las siguientes propiedades:
#
#Destinatario (user_to). Referencia a un usuario del sitio.
#Asunto (subject). Texto limitado a 100 caracteres
#Contenido (content). Texto largo
#Leído (is_read). Campo de tipo Booleano. Acepta los valores FALSE (no leído) y TRUE (leído). Esta propiedad no será rellenable por el usuario.
#3. Crea el tipo de contenido News. Crea al menos dos nodos de este tipo, con URLs news/news1 y news/news2. 
#
#4. Desde la interfaz, crea el bundle Basic (basic) en la entidad Message, y añade 3 mensajes destinados al usuario admin (escritos por otros usuarios). Asigna los permisos adecuados a los usuarios registrados para que puedan publicar mensajes.