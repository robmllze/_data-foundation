##.title
## ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
##
## 🇽🇾🇿 & Dev
##
## Copyright Ⓒ Robert Mollentze, xyzand.dev
## 
## Licensing details can be found in the LICENSE file in the root directory.
## 
## ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
##.title~

# Sync this folder with https://github.com/robmllze/_data-foundation. You must
# run it from the _data/ folder and not from the root of your project.
git init
git add .
git commit -m "upstream"
git remote remove upstream
git remote add upstream https://github.com/robmllze/_data-foundation.git
git fetch upstream
git merge upstream/main --allow-unrelated-histories --no-edit