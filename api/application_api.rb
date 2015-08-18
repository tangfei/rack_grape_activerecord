require 'v1/base'
require 'active_record'

module BayeApi
  class ApplicationAPI < Grape::API

    format :json

    mount V1::Base
  end
end

