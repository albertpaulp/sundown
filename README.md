[![Build Status](https://travis-ci.org/albertpaulp/sundown.svg?branch=master)](https://travis-ci.org/albertpaulp/sundown)
[![Test Coverage](https://codeclimate.com/github/albertpaulp/sundown/badges/coverage.svg)](https://codeclimate.com/github/albertpaulp/sundown/coverage)
[![Code Climate](https://codeclimate.com/github/albertpaulp/sundown/badges/gpa.svg)](https://codeclimate.com/github/albertpaulp/sundown)

# Sundown

Sundown is a Ruby gem/wrapper for Yahoo Weather API. Sundown is compatible with 1.9.3 +, and with almost all ruby frameworks. You don't need to have a Yahoo Developer account to start using gem, Yahoo Weather API provides free API calls upto 2k queries.
This gem queries weather information from  [Yahoo Weather API](https://developer.yahoo.com/weather/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sundown'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sundown

## Usage

Require gem in your code class.
```ruby
require 'sundown'
```

You can access weather data by using two different class depends on your usage, since we've a limited query calls to Yahoo API(2K/day), we should query all data at once and serve it later without firing queries.

###Use Location class (less query calls and faster )

Using location is recommended to weather information, this method does make create instance so effectively less queries and faster performance.

Create a instance object for Location.

```ruby
location = Sundown::Location.new('zip/location_name/woeid')
``` 

```ruby
location.temperature  =>  Returns temp. in Farenheit.
```
```ruby
location.temperature('c') =>  Returns temp. in Celsious.
```

Each time when you call ```location.temperature``` you are reusing weather data queried when you first called it, it doesn't refresh weather data unless explicitly you ```refresh``` it.

To delete current weather information instance,

```
location.refresh   =>  Deletes current weather instance.
```

Following first method call will query new weather instance.

###Use Weather class (No caching, slower)

Whenever you call this method, a query will be fired to find temperature, meaning you can only call this 2K/day. This method will return latest weather information, also this method takes more time as it needs to fetch weather information from Yahoo API.

```
temperature = Sundown::Weather.temperature('zip/location_name/woeid')
```

Use parameter 'c' to get temperature in Celsius.

## Terms of Use

The above feeds are provided free of charge for use by individuals and non-profit organizations for personal, non-commercial uses. Yahoo reserve all rights in and to the Yahoo logo, and your right to use the Yahoo logo is limited to providing attribution in connection with these RSS feeds.

## Contributing

1. Fork it ( https://github.com/albertpaulp/sundown/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
