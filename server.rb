require 'rubygems'
require 'sinatra'
require 'tropo-webapi-ruby'

get '/' do
    "Hello World"
end

post '/helloworld.json' do
    Tropo::Generator.say 'Hello World!'
end

post '/helloworld_block.json' do
    tropo = Tropo::Generator.new do
        say 'Hello World!'
    end
    tropo.response
end

post '/helloworld_twice.json' do
    tropo = Tropo::Generator.new
    tropo.say 'Hello World!'
    tropo.say 'Hello again.'
    tropo.response
end
