module BayeApi
  module V1
    class Products < Grape::API
      get 'hello' do
        {hello: 'worldqq'}
      end

      get 'products' do
         Product.order('id desc')
      end
    end

  end
end