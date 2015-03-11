require 'sinatra'
# require 'tiny_tds'

# $database_client = TinyTds::Client.new username: 'sa', password: 'hmmystat', host: 'kingc.no-ip.org', database: 'HMMYStat'

# result = $database_client.execute("SELECT Id FROM [Students] WHERE Id = 7422")
# id = result.each
# result.cancel

def database_read_table_attrs tables
	puts tables
end


get '/' do
  erb :index, :layout => :'layout'
end

post '/tables' do
	database_read_table_attrs params["tables"].split(',')
	@tables = "The tables you inserted are: #{params["tables"]} and also "#{id}"
	erb :index, :layout => :'layout'
end