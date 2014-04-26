# DateHelper

Adds `months_between` method to the `Date` class. 

`months_between` returns an array of `Date` objects for the first day of each month, inclusive of the starting and ending months.

## Installation

Add this line to your application's Gemfile:

    gem 'date_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_helper

## Usage
```ruby
xmas = Date.parse("2013-12-25")
hksar_establishment_day = Date.parse("2014-07-01")

Date.months_between(xmas,hksar_establishment_day)
 => [Sun, 01 Dec 2013, Wed, 01 Jan 2014, Sat, 01 Feb 2014, Sat, 01 Mar 2014, Tue, 01 Apr 2014, Thu, 01 May 2014, Sun, 01 Jun 2014, Tue, 01 Jul 2014]
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
