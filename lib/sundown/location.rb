module Sundown
  # Main class to accomodate core-features.
  class Location
    def initialize(location)
      @location = location
    end

    def temperature
      weather['query']['results']['channel']['item']['condition']['temp'].to_f
    end

    def humidity
    end

    def refresh
      @weather = nil
    end

    private

    def weather
      unless @weather
        domain = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{@location}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
        url = URI.parse(domain)
        req = Net::HTTP::Get.new(url.request_uri)
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = (url.scheme == "https")
        response = http.request(req).body
        @weather = JSON.parse(response)
      end
      @weather
    end
  end
end
