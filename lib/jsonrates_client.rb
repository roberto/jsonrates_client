require "jsonrates_client/version"
require "httparty"

module Jsonrates
  class Client
    include HTTParty
    base_uri "jsonrates.com"

    def self.historical(options)
      response = JSON.parse(get("/historical", query: options))
      response["rates"]
    end
  end
end
