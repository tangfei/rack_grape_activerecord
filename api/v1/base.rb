require 'v1/products'

module BayeApi
  module V1
    class Base < Grape::API
      version "v1", using: :path

      mount Products
      add_swagger_documentation
      # add_swagger_documentation mount_path: '/api/doc',
      #                           api_version: 'v1',
      #                           markdown: true,
      #                           hide_documentation_path: true
      #                           # base_path: Application.config.base_path
    end
  end
end
