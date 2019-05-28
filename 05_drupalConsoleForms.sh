## Ejercicio 1
#Crear el módulo Bits Forms (bits_forms), en el paquete Bits, y subirlo a la carpeta /modules/custom. Realiza las siguientes acciones: 
#
#Crea el formulario básico Simple Form, con ruta (bits_forms.simple), y URL /bits/forms/simple. 
#Enlaza el formulario desde un menú.
#El formulario tendrá los campos Título (obligatorio), Nombre de usuario, Correo electrónico y un botón de Submit. 
#Inyecta en el formulario los servicios database y current_user. 
#Asigna a los campos Nombre de usuario y Correo electrónico los valores por defecto correspondientes, en función del usuario actual. 

## Ejercicio 2
#Realiza las siguientes acciones de validación en el formulario Simple Form creado en el ejercicio 1. 
#
#El campo título tendrá entre 5 y 30 caracteres (inclusive), y empezará por mayúsculas. 
#Valida el email introducido. 
#Si el formulario está siendo enviado por un usuario registrado, comprueba que el nombre de usuario no ha sido modificado. 
#Activa y prueba el módulo Inline Form Errors (módulo experimental incluido en el núcleo). Provoca errores para probar el módulo.


## Ejercicio 3
#Realiza las siguientes acciones en el submit del formulario Simple Form creado anteriormente. 
#
#Crea la tabla bits_forms_simple (desde hook_schema), con los campos: 
#id (autoincremental)
#title. 
#uid.
#username.
#email.
#ip.
#timestamp. 
#Reinstala el módulo para que se cree la tabla. 
#Al enviarse el formulario, guarda los valores en la tabla, rellenando el resto de campos con los valores esperados. Si el usuario es anónimo, el valor de uid será 0. 
#
#Comprueba que el usuario (uid) no esté insertado en la tabla. Si es así, se devolverá un error en el formulario (haz esta modificación en la función de validación). Esta validación solo se hará para usuarios registrados. 
#
#Muestra un mensaje indicando el nombre de usuario insertado. 
#
#Guarda un mensaje de log con el uid, nombre de usuario y valor de title. 
#
#Redirige el formulario a la página bits_pages.simple creada anteriormente.  
#
#Envía el formulario como usuario anónimo y como usuario registrado (dos veces con el mismo usuario). Comprueba el correcto funcionamiento. 