$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['RACK_ENV']

# Dir[File.expand_path('../../api/*.rb', __FILE__)].each do |f|
#   require f
# end
require 'sinatra'
require 'active_record'
require 'logger'
dbconfig = YAML::load(File.open('./config/database.yml'))
ActiveRecord::Base.establish_connection(dbconfig['development'])

require 'application_api'


