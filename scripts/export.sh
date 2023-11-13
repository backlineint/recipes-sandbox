#!/bin/bash

lando drush cex -y
rm -rf web/recipes/custom/slidez/config
mkdir web/recipes/custom/slidez/config
cp ./config/sync/*slidez* ./web/recipes/custom/slidez/config/