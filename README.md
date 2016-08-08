# SuperStrip

Another version of strip methods to strip special white spaces.
`String#strip` removes white spaces in string, but not special white spaces for example `\u3000` (IDEOGRAPHIC SPACE, commonly used in Japanese), `\u3164` (HANGUL FILLER).

[![Build Status](https://travis-ci.org/pompopo/super_strip.svg?branch=master)](https://travis-ci.org/pompopo/super_strip)
[![Gem Version](https://badge.fury.io/rb/super_strip.svg)](https://badge.fury.io/rb/super_strip)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'super_strip'
```

## Usage

```
str = '　string　'
str.super_strip #=> 'string'
str.super_lstrip #=> 'string　'
str.super_rstrip #=> '　string'

# destructive methods
# These return nil if no spaces are removed
str1 = str.dup
str1.super_strip! #=> 'string'
str1 #=> 'string'

str2 = str.dup
str2.super_lstrip! #=> 'string '
str2 #=> 'string '

str3 = str.dup
str3.super_rstrip! #=> ' string'
str3 #=> ' string'
```

If you want to remove all spaces in string, you can use `SuperStrip::WHITE_SPACES` constant.
```
' s t r i n g '.delete SuperStrip::WHITE_SPACES.join #=> 'string'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pompopo/super_strip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
