module BayeApi
  module V1
    class Products < Grape::API
      get 'hello' do
        {hello: 'worldqq'}
      end
    end
  end
end