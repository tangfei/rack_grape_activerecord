require 'v1/products'

module BayeApi
  module V1
    class Base < Grape::API
      prefix 'api'
      version "v1", :using => :path

      mount Products
    end
  end
end
