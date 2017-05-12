# README

Implementation of ReactJS with Rails tutorial from here: https://www.airpair.com/reactjs/posts/reactjs-a-guide-for-rails-developers

After completing the tutorial in tutorial-accounts, this repo will aim to implement user authentication using devise.

This version uses ES6 instead of CoffeeScript. You can use ES6 with react-rails by adding the extra command --es6 to the component generation command:

```
rails generate react:component ComponentName --es6
```

Windows 10 seems to have some issues with bcrypt:
```
irb
irb(main):002:0> require 'bcrypt'
LoadError: cannot load such file -- bcrypt_ext
```

The workaround seems to be to run
```
gem uninstall bcrypt

gem install bcrypt --platform=ruby
```
