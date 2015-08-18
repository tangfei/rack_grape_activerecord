require 'spec_helper'

describe BayeApi::ApplicationAPI do
  include Rack::Test::Methods

  def app
    BayeApi::ApplicationAPI
  end

  it 'get products' do
    get "/v1/products"
    expect(last_response.status).to eq(200)
  end

end