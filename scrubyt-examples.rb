require 'rubygems'
require 'sinatra'

get '/hi' do
  "Hello World!"
rescue => detail
  print detail.backtrace.join("\n")
end