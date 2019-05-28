## 1 Exercise Drush
# 1
composer require drupal/business
drush en business
drush theme:enable business
# 2
drush cli | grep theme
drush cli | grep admin
# 3
drush config:set system.theme admin business -y
# 4
drush cache:rebuild
# 5

##2 Exercise Drush
# 1
drush role:create 'gestor drush' 'Gestor Drush'
# 2
drush role:add:perm "gestor drush" 'access content'
# 3
drush user:create 'demodrush'
# 4
drush user:add:role 'gestor drush' 'demodrush'
# 5
drush user:password 'demodrush' --password='password'
# 6
drush user:block 'demodrush'