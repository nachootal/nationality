# Nationality
by [Jose Marie Antonio Miñoza](https://github.com/JomaMinoza)

Provides listing of nationality that you may need in your ruby applications.

Data in this gem was taken from Github GIST and the following repos:

* [marijn/README.markdown](https://gist.github.com/marijn/274449#file-nationalities-yaml)

## Installation

Add this line to your application's Gemfile:

    gem 'nationality', '~> 1.0.3'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nationality

## Usage

This gem provides the following constant arrays:

* `Nationality::NATIONALITY`

## NEW! Added Options for Select Helper

Customize `options_for_select` with default nationality for your Rails application.

```ruby
= f.select :nationality, options_for_select(Nationality::Nationality.default_option("filipino"), :selected => f.object.nationality), {include_blank: "What's your nationality?"}, {:class => 'form-control' }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
