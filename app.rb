require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/#') do

end
