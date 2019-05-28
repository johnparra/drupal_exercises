## Ejercicio 1
#Define el módulo BITS Pages (bits_pages), y súbelo a la carpeta /modules/custom. 
#El módulo pertenecerá al paquete BITS.
#Crea la ruta bits_pages.simple (bits_pages.routing.yml) , la clase controladora y el método específico para esta página. 
#Está página mostrará el mensaje "Página con mensaje simple"
drupal generate:module \
--module="bits_pages"  \
--machine-name="bits_pages"  \
--module-path="modules/custom"  \
--description="Bits Pages"  \
--core="8.x" \
--package="BITS"  \
--twigtemplate

drupal module:install bits_pages

 drupal generate:controller  \
  --module="bits_pages"  \
  --class="BitsPagesController"  \
  --routes='"title":"ControllerSimple", "name":"bits_pages.simple", "method":"simple", "path":"/bits_pages/simple"','"title":"ControllerCalculator"'

## Ejercicio 2
#Define la ruta bits_pages.calculator (bits_pages.routing.yml), dentro del módulo BITS Pages (bits_pages), y su método controlador.
#Esta página es una calculadora (suma,resta,división,multiplicación, resto de la división)
#Añade a la ruta los parámetros opcionales 20 y 10.
#Comprueba el funcionamiento de la página, incluyendo varias combinaciones de parámetros y forzando la división por cero.

drupal generate:controller  \
  --module="bits_pages"  \
  --class="BitsCalculatorController"  \
  --routes='"title":"ControllerCalculator", "name":"bits_pages.calculator", "method":"calculator", "path":"/bits_pages/calculator/{operador}/{x}/{y}"'

## Ejercicio 3
#Define la ruta bits_pages.links, dentro del módulo BITS Pages (bits_pages), y su método controlador.
#Imprime una lista de elementos (menú) con los siguientes enlaces:
#Administración de bloques
#Administración de contenidos
#Administración de usuarios.
#Enlace a la portada del sitio
#Enlace al nodo con id 1
#Enlace a la edición del nodo con id 1
#Enlace externo a www.google.com (se debe abrir en ventana nueva).
drupal generate:controller  \
  --module="bits_pages"  \
  --class="BitsLinksController"  \
  --routes='"title":"ControllerLinks", "name":"bits_pages.links", "method":"links", "path":"/bits_pages/links"'

## Ejercicio 4
#Realiza las siguientes tareas dentro del módulo BITS Pages (bits_pages):
#Crea el permiso 'access calculator'. Desde la interfaz, crea el rol Gestor y asígnale el permiso 'access calculator'. Asígnale también el permiso Toolbar: Usar la barra de herramientas de administración. Asígnale el rol Gestor al usuario demouser (crea el usuario si no existe).
#Instala el módulo Masquerade y coloca el bloque de Enmascaramiento en la columna izquierda del tema principal.
#Modifica los permisos de la ruta 'bits_pages.calculator' para que solo se pueda acceder con el permiso 'access calculator'.
#Modifica los permisos de la ruta 'bits_pages.links' para que siempre se pueda acceder.
#Comprueba el acceso a las diferentes rutas (y a los menús) entrando como usuario demouser y como usuario anónimo.

## Ejercicio 5
#Realiza las siguientes tareas dentro del módulo BITS Pages (bits_pages):
#Modifica la clase controladora para inyectar los servicios 'current_user' y 'date.formatter'. Declara los parámetros $currenUser y $dateFormatter.
#Realiza una modificación en la página de la calculadora mostrando un texto general y un texto específico cuando el usuario tiene el permiso 'administer nodes'.
#Modifica el contenido de la página de links para que se muestre la fecha actual formateada de esta forma: AAAA:MM:DD (2016:12:05). Utiliza el servicio inyectado y el método correspondiente.