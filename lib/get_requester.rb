require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  def initialize(uri)
    @uri = uri
  end

  def get_response_body
    uri = URI.parse(@uri)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end
