require 'v1/base'

module BayeApi
  class ApplicationAPI < Grape::API

    format :json

    mount V1::Base
  end
end

