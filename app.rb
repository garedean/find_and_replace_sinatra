require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/adjusted') do
  @phrase = params.fetch('phrase')
  @target = params.fetch('target')
  @substitue = params.fetch('substitute')
end
