## Usage

### Run with docker

TODO: Setup and fill here

### Run in local

At first, you need [direnv](https://github.com/direnv/direnv).  
  
Copy `.envrc.sample` to be named `.envrc`, and edit it with your values.  
After that, run the forwarder with commands below.

```
$ direnv allow
$ bundle install --path vendor/bundle
$ bundle exec ruby bot.rb
```
