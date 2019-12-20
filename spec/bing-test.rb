require 'rspec'
require_relative '../bing.rb'

describe Bing do
    let(:url) { "https://www.bing.com/search" }
    let(:query) { "microverse" }
    subject(:bing) {Bing.new(url,query)}

    describe "Status" do
        it "The response code for the request should be 200" do
            expect(bing.response_code).to eq(200)
        end
    end
    
    describe "Non-Empty" do
        it "Checks if the response body is non empty" do
            expect(bing.body.nil?).to be false
        end
    end
    
    describe "Query" do
        it "Checks if the query string is present in the body" do
            expect(bing.body.include?(query)).to be true
        end
    end
end
