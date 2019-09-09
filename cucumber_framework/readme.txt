Prerequisites:
Google Chrome:
  Chrome should be updated

RVM installation:
  \curl -sSL https://get.rvm.io | bash -s stable --ruby

set-ruby:
  Run command:rvm list
  If ruby is set as latest version then run command rvm use 2.6.3

Set up Gems:
  Go to cucumber_framework folder and rub command : make set-gems

Run Feature:
  Go to project folder and run command: cucumber

