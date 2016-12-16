Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')

get("/") do
  erb(:index)
end
