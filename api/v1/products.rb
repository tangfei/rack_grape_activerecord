require 'active_record'
require './models/product'
module BayeApi
  module V1
    class Products < Grape::API

      get 'products' do
         Product.order('id desc')
      end

      get 'products/:id' do
         Product.find(params[:id])
      end

    end
  end
end