require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble.rb')

get('/form') do
  erb(:form)
end

get('/submitted') do
  @self = params.fetch('self')
  @sum = params.fetch('self').scrabble()
  erb(:submitted)
end
