## Ejercicio 1
#Crea el módulo Bits Users (bits_users), implementando: 
#Crea el bloque UserBlock, que mostrará la siguiente información del usuario actual: 
#Id del usuario. 
#"DisplayName". 
#Roles (exceptuando los roles anónimo y autenticado)
#Email. 
#Fecha de último login.
#Desde la interfaz, activa el bloque para que se muestre en la columna derecha del sitio, por encima del resto de bloques.

## Ejercicio 2
#En el módulo Bits Users (bits_users): 
#
#Crea los permisos 'access user block' y 'configure extra user data'. Asigna los permisos al rol Gestor(Crear el rol si no existe). El usuario autenticado también podrá ver el bloque ('access user block').
#Modifica el acceso al bloque UserBlock para que solo se muestre a usuarios que tengan el permiso 'access user block'. La validación se cacheará por usuario.

drupal generate:module \
--module="bits_users"  \
--machine-name="bits_users"  \
--module-path="modules/custom"  \
--description="Bits Users"  \
--core="8.x" \
--package="BITS"  \
--twigtemplate

drupal module:install bits_users