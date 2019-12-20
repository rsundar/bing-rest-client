require 'rest-client'
class Bing
    attr_reader :response
    def initialize(url, query)
        @response = RestClient.get(url, {params: {:q => query}})
    end

    def response_code
        @response.code
    end

    def body
        @response.body
    end
end

bing = Bing.new("https://www.bing.com/search","microverse")
puts bing.response_code
