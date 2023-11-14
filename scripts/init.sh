#!/bin/bash

composer install
lando start
lando drush si -y
lando drush upwd admin admin
lando ssh -c "cd web && php core/scripts/drupal recipe recipes/custom/slidez"
lando drush en devel_generate -y
lando drush genc 10 --bundles=slidez_slide
lando drush genc 1 --bundles=slidez_presentation