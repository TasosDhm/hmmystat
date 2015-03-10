require 'sinatra'

get '/' do
  	File.read('index.html')
end

post '/test' do
	puts params
end