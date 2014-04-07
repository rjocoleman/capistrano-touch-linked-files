# capistrano-touch-linked-files

Capistrano linked files are super handy however on first deploy you can end up with a chicken an egg problem -
can't deploy because the file doesn't exist, but the file is created after you've deployed. Oh no!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-touch-linked-files'
```

And then execute:

`$ bundle`

Or install it yourself as:

`$ gem install capistrano-touch-linked-files`


## Usage

Require the module in your `Capfile`:

```ruby
require 'capistrano/touch-linked-files'
```

`capistrano-touch-linked-files` comes with 1 task:

* `linked_files:touch`


#### linked_files:touch

Touches your `:linked_files`, so they'll be created if they don't exist:

```shell
$ cap staging linked_files:touch
 INFO Touched: shared/config/production.sphinx.conf
```

This is automatically hooked into your Capistrano run `before 'deploy:check:linked_files'`


### Configuration

There's none.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
