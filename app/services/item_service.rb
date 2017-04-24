require 'httparty'
require "base64"
class ItemService
  include HTTParty

  format :json

  base_uri "http://localhost:4000/api/v1"

  #def initialize(token)
  def initialize
    @options =  {
      headers: {
        # "X-Zingoy-Client" => AppConfig.api_client_id,
        # "Authorization" => "Bearer #{token}",
        "Content-Type" => "application/json",
        "Accept" => "application/json"
      }
    }
  end

  def line_item_list
    self.class.get("/items", @options)
  end
end
