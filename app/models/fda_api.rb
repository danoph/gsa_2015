require 'faraday'
require 'json'
require 'active_support'

class DoNotEncoder
  def self.encode(params)
    buffer = ''
    params.each do | k,v |
      buffer << "#{k}=#{v}&"
    end
    return buffer.chop
  end
end

class FdaApi
  API_KEY = ENV['FDA_API_KEY']

  def self.get_label(query)
    response = connection.get "/drug/label.json", build_params(search: "generic_name:#{query}" )
    parse_response(response.body)
  end

  private

  def self.build_params(params)
    { api_key: API_KEY }.merge(params)
  end

  def self.parse_response(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.connection
    @connection ||= Faraday.new(url: "https://api.fda.gov") do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      faraday.options.params_encoder = DoNotEncoder #TODO
    end
  end
end
