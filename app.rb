require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/client")
require("./lib/stylist")
require("pg")


get("/") do
  erb(:index)
end

get("/stylists") do
  @stylists = Stylist.all()
  erb(:stylists)
end

post("/stylists") do
  new_name = params.fetch("name_input")
  new_stylist = Stylist.new({:name => new_name, :id => nil})
  if new_stylist.save()
    @stylists = Stylist.all()
    erb(:stylists)
  else
    erb(:error_page)
  end
end

get("/stylist/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  @clients = @stylist.clients()
  erb(:stylist)
end

get("/client/:id") do
  @client = Client.find(params.fetch("id").to_i())
  @stylists = Stylist.all()
  erb(:client)
end
