require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

path = "/home/peterszinek/examples.scrubyt.org/current"

Sinatra::Application.default_options.merge!(
	:root => path,
	:views => path + '/views',
	:public => path + '/public',
  :run => false,
  :env => :production
	:raise_errors => true
)

log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

require 'scrubyt-examples.rb'
run Sinatra.application