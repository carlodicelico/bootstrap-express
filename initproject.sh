#!/bin/sh
echo "Creating directory structure..."
mkdir -pv ./public ./public/images ./public/javascripts ./public/stylesheets
mkdir -v ./routes ./tests ./views

echo "Setting up Express app..."
cp -v ./templates/app/*.* ./
cp -v ./templates/routes/*.coffee ./routes/
cp -v ./templates/views/*.jade ./views/
cp -v ./templates/public/javascripts/* ./public/javascripts/
cp -v ./templates/public/stylesheets/* ./public/stylesheets/

echo "Getting Twitter Bootstrap..."
curl -O http://twitter.github.com/bootstrap/assets/bootstrap.zip && unzip bootstrap.zip
cp -v ./bootstrap/img/*.png ./public/images/
cp -v ./bootstrap/css/*.min.css ./public/stylesheets/
cp -v ./bootstrap/js/*.min.js ./public/javascripts/

echo "Installing dependencies..."
sudo npm install

echo "Doing initial build..."
coffee -c **/*.coffee
jade -P **/*.jade
lessc public/stylesheets/styles.less public/stylesheets/styles.css

# leave it up to the developer to make changes before adding/commiting
echo "Initializing a git repo, but NOT adding or committing anything..."
git init

echo "Cleaning up..."

rm -rf .git
rm -rf templates
rm -rf bootstrap
rm README.md
rm initproject.sh
rm bootstrap.zip

echo "All done! Feel free to make changes to what's here before making your first commit."