require 'sundown/unsupported_location_input'
require 'net/http'
require 'json'
require 'sundown/location'

module Sundown
  # Used to get weather information without caching, fire queries everytime.
  class Weather
    def self.temperature(location)
      location = Location.new(location)
      location.temperature
    end
  end
end
