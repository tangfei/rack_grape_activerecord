require 'spec_helper'

describle API::V1::Users do
  describle 'Get /api/v1/users' do
    it 'says hello' do
      get "/api/v1/users"
      last_response.status.should == 200
      JSON.parse(last_response.body)["hello"].should == "world"
    end
  end
end