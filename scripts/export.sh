#!/bin/bash

lando drush cex -y
rm -rf web/recipes/custom/slidez/config
mkdir web/recipes/custom/slidez/config
cp ./config/sync/*slidez* ./web/recipes/custom/slidez/config/
find web/recipes/custom/slidez/config -type f -exec sed -i '' '/^uuid: /d' {} \;
find web/recipes/custom/slidez/config -type f -exec sed -i '' '/_core:/{N;d;}' {} \;