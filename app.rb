require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/client")
require("./lib/stylist")
require("pg")


get("/") do
  @stylists = Stylist.all()
  erb(:stylists)
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

post("/stylist/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  new_client = Client.new({:name => params.fetch("new_client_name"), :id => nil, :stylist_id => @stylist.id()})
  new_client.save()
  @clients = @stylist.clients
  erb(:stylist)
end

delete("/stylist/:id") do
  doomed_stylist = Stylist.find(params.fetch("id").to_i())
  doomed_stylist.delete()
  @stylists = Stylist.all()
  erb(:stylists)
end

get("/stylist/:stylist_id/client/:client_id") do
  @client = Client.find(params.fetch("client_id").to_i())
  @stylist = Stylist.find(params.fetch("stylist_id").to_i())
  @stylists = Stylist.all()
  erb(:client)
end
#
patch("/stylist/:stylist_id/client/:client_id") do
  @client = Client.find(params.fetch("client_id").to_i())
  @client.update(params.fetch("new_stylist"))
  @old_stylist = Stylist.find(params.fetch("stylist_id").to_i())
  @new_stylist = Stylist.find(params.fetch("new_stylist").to_i())
  @stylists = Stylist.all()
  erb(:client_success)
end
