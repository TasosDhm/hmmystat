require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  	File.read('index.html')
end

post '/test' do
	puts params
end