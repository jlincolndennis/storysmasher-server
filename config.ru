# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
require 'rack'
require 'rack/cors'
use Rack::Cors do
  allow do
    origins 'localhost:3000', 'https://storysmasher.firebaseapp.com/'
    resource '/api/*', :headers => :any, :methods => :get
  end
end
