## Ejercicio 1
#Crea el módulo Bits Database (bits_database), en el paquete Bits, y subirlo a la carpeta /modules/custom. 
#
#Haciendo uso de hook_schema, define la tabla 'bits_database_example' con los siguientes campos: 
#id. Tipo serial (autoincremental). Será la clave primaria. 
#uid.Tipo int, not null.
#status. Tipo small int, para almacenar los valores 0 y 1. El valor por defecto será 0. Not Null. 
#title. varchar de 255 caracteres. Not Null. 
#type. varchar de 64. Not Null
#ip. varchar de 128. Not Null
#timestamp. Guardará una fechan en formato timestamp. Not null.
#También dentro de hook_schema, define la tabla 'bits_database_counter': 
# route. varchar 150. Not null
#uid. int not null. Valor por defecto 0.
#user_count. int not null. Valor por defecto 0
#lastcount. int para almacenar un timestamp. 
#La clave primaria estará compuesta por los campos route y uid. 
#Instalar el módulo y comprobar que las tablas se hayan creado en la base de datos. 