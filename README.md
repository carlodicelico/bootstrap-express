# Node Bootstrap

### *Inspired by [Rob Righter's Node Boilerplate Version 2](https://github.com/robrighter/node-boilerplate)*

Node Bootstrap is a way to get started quickly with your Express app. Comes pre-configured with:
* Express
* Socket.io
* Jade
* Stylus
* Coffeescript
* Mongoose

To start a project:
    
    git clone https://github.com/carlodicelico/node-bootstrap.git mynewproject
    cd mynewproject
    ./initproject.sh
This will set up a new Express project with Stylus and sessions support, integrate Twitter Bootstrap, and initialize a git repo for you. 

Make whatever changes you want to the project and set up your Makefile the way you like it. I've included stubs for watch, test, and build. Once that's done, you can do a build and run the app using `npm start` or your custom `make` command.

Pull requests welcome.