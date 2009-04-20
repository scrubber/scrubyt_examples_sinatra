require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production
	:views => '/home/peterszinek/examples.scrubyt.org/views'
)

require 'scrubyt-examples.rb'
run Sinatra.application