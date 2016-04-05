# Scooter version for Rails 4, 3.x Asset Pipeline
An SCSS framework & UI library for [Dropbox](https://github.com/dropbox/scooter).
Built to provide base styles, CSS components, and rapid static prototyping.

## Installation

In your Gemfile you need to add the scooter-sass gem:

```ruby
gem 'scooter-sass'
```

And then run the bundler and restart your server to make the files available through the pipeline:

    $ bundle

Or install it yourself as:

    $ gem install scooter-sass

## Usage
### a. Sass

Import Scooter styles in `app/assets/stylesheets/application.scss`:

```scss
@import "scooter";
```

**NOTE:** If you have just generated a new Rails application, it  may come with a `.css` file instead. If this file exists, it will be served instead of Sass, so remove it.

```console
$ rm app/assets/stylesheets/application.css
```





## Contributing

1. Fork it ( https://github.com/sanata-/scooter-sass/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
