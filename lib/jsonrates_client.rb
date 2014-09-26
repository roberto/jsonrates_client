require "jsonrates_client/version"
require "httparty"

module Jsonrates
  class Client
    include HTTParty
    base_uri "jsonrates.com"

    REPLACE_KEYS = {
      date_start: :dateStart,
      date_end: :dateEnd
    }

    def self.historical(options)
      prepare_params(options)
      response = JSON.parse(get("/historical", query: options))
      response["rates"]
    end

    private

    def self.prepare_params(options)
      REPLACE_KEYS.each_key do |key|
        if options.has_key?(key)
          options[REPLACE_KEYS[key]] = options.delete(key)
        end
      end
    end
  end
end
