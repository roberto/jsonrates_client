RSpec.describe Jsonrates::Client do
  subject do
    Jsonrates::Client
  end

  describe ".historical", :vcr do
    context "successful request" do
      let!(:historical) do
        subject.historical(from: "USD", to: "BRL", date: "2014-06-23")
      end

      it "requests historical using arguments as query parameters" do
        expect(a_request(:get, "http://jsonrates.com/historical?from=USD&to=BRL&date=2014-06-23")).to have_been_made
      end

      it "returns a hash of rates", :vcr do
        expect(historical).to eq({"2014-06-23"=>{"utctime"=>"2014-06-23T23:50:03+02:00", "rate"=>"2.22120000"}})
      end
    end
  end
end
