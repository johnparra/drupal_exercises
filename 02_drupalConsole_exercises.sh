## 1 Drupal-console exercise
#1
drupal cr all
#2
drupal debug:database:log --limit='10'
#3
drupal database:log:clear --type='php'
#4
drupal uli admin
#5 limpiar errores de acceso de admin
drupal ulca admin


## 2 Drupal-console exercise
#1
drupal crn page --limit='10'
#2
drupal crn article --limit='10'
#3
drupal cru 'gestor drush' --limit='5' --password='password' --range='1'
#4
drupal crv --limit='1' --name-words='20'