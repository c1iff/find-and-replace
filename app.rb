require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/find_and_replace_form') do
  @initial_str_input = params.fetch('initial_str')
  @replacee_str_input = params.fetch('replacee_str')
  @replacer_str_input = params.fetch('replacer_str')
  @final_output = (@initial_str_input).find_and_replace(@replacee_str_input, @replacer_str_input)
  erb(:index)
end
