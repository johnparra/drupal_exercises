##Modules 1
#1 Definir el módulo Training Drupal 8  (training_drupal_8), y subirlo a la carpeta /modules/custom.
drupal generate:module \
--module="training_drupal_8"  \
--machine-name="training_drupal_8"  \
--module-path="modules/custom"  \
--description="Training Drupal 8"  \
--core="8.x" \
#2 El módulo debe pertenecer al paquete BITS.
--package="BITS"  \
#3 Añadir una dependencia con el módulo Chaos tool suite.
--dependencies="ctools" \
#4 Crear el archivo .module vacío (solo la cabecera y el comentario con la descripción del archivo).
--module-file  \
--composer  
#5 Subir e instalar el módulo.
drush en training_drupal_8 --resolve-dependencies

#6 Crear la página /training-drupal-8/hello.
# Se creo el controlador en training_drupal_8/src/Controller/HelloController.php
# Se creo la clase HelloController y dentro se creo la función hello
 drupal generate:controller  \
  --module="training_drupal_8"  \
  --class="HelloController"  \
  --routes='"title":"ControllerMethod", "name":"training_drupal_8.hello_controller", "method":"hello", "path":"/training_drupal_8/hello"'

#7 Crear el enlace de menú en el menú principal

#8 Implementar el hook hook_help
drupal generate:help \
 --module="training_drupal_8" \
 --description="Esta es la ayuda para el módulo training_drupal_8"

#9 Reinstalar el módulo y comprobar que el mensaje de ayuda se muestra en las páginas indicadas.

##Modules 2
#1 Usando comandos de Drush, comprobar el estado del módulo Training Drupal 8.
drush pm:info training_drupal_8

#2 Usando comandos de Drupal Console, instala el módulo Training Drupal 8.
drupal module:install training_drupal_8

#3 Usando comandos de Drush, sube e instala el módulo Admin Toolbar (y submódulo Admin Toolbar Tools)
drush en admin_toolbar

#4. Usando comandos de Drupal Console, crear el módulo Training Drupal 8 Console (training_d8_console), con las siguientes características:
#4.1 Añadir una descripción, y el grupo BITS.
#4.2 El módulo dependerá de Pathauto
#4.3 No crear inicialmente el archivo.module
#4.4 Generar el módulo y comprobar que se ha generado correctamente.
drupal generate:module \
--module="training_drupal_8"  \
--machine-name="training_drupal_8"  \
--module-path="modules/custom"  \
--description="Training Drupal 8"  \
--core="8.x" \
--package="BITS"  \
--dependencies="pathauto" \
--twigtemplate

#5. Usando comandos de Drupal Console:
#5.1 Añadir el archivo.module al módulo anterior.
drupal generate:module:file --module="training_drupal_8"
#5.2 Instalar el módulo.
drupal module:install training_drupal_8

##Modules 3
#1.Implementa hook_install() donde se instala una variable de estado y se crea un nuevo término en el vocabulario Tags. TODO
# training_drupal_8_install(){} creado en el archivo php
#1.1 Desinstala y reinstala el módulo para poder ver los cambios introducidos. 
drupal module:uninstall training_drupal_8
drupal module:install training_drupal_8
#1.2 Comprueba en el editor de Variables de estado de Devel (instala el módulo), que la nueva variable ha sido creada.
drupal module:install devel
#1.3 Comprueba en el vocabulario Tags que el nuevo término ha sido creado. TODO
#1.4 Desinstala el módulo y comprueba qué pasa con esos elementos creados anteriormente.
drupal module:uninstall training_drupal_8
 
#2. Implementar hook_uninstall(), de forma que elimine la variable de estado creada durante la instalación. TODO
# Se implemento sin embargo no se logro eliminar la variable (codigo comentado)
#2.1 Instalar y desinstalar el módulo, comprobando que la variable ha sido eliminada. 
drupal module:install training_drupal_8
drupal module:uninstall training_drupal_8