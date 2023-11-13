#!/bin/bash

composer install
lando start
lando drush si -y
lando drush upwd admin admin
lando ssh -c "cd web && php core/scripts/drupal recipe recipes/custom/slidez"
