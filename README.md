# JsonratesClient

Client for [jsonrates.com](http://jsonrates.com/) written in Ruby.

## Usage

    Jsonrates::Client.historical(from: "USD", to: "BRL", date: "2014-06-23")
    # {"2014-06-23"=>{"utctime"=>"2014-06-23T23:50:03+02:00", "rate"=>"2.22120000"}}

## Installation

Add this line to your application's Gemfile:

    gem 'jsonrates_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jsonrates_client

## Contributing

1. Fork it ( https://github.com/roberto/jsonrates_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
