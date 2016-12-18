require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

DB = PG.connect((:dbname => "hair_salon"))

get("/") do
  erb(:index)
end

get("/stylists") do
  @stylists = Stylist.all()
  erb(:stylists)
end

post("/stylists") do
  name = params.fetch()
  stylist = Stylist.new({:name => name, :id =>})
  stylist.save()
  @stylists = Stylist.all()
  erb(:stylists)
end

get("/stylists") do
  @stylists = Stylist.all()
  erb(:stylists)
endget("/stylists") do
  @stylists = Stylist.all()
  erb(:stylists)
end

post("/stylists") do
  name = params.fetch()
  stylist = Stylist.new({:name => name, :id =>})
  stylist.save()
  @stylists = Stylist.all()
  erb(:stylists)
end

post("/stylists") do
  name = params.fetch()
  stylist = Stylist.new({:name => name, :id =>})
  stylist.save()
  @stylists = Stylist.all()
  erb(:stylists)
end

get("/stylists/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  @clients = Client.all()
  erb(:stylist_view)
end

get("/clients/:id") do
  @client = Client.find(params.fetch("id").to_i())
  @stylists = Stylist.all()
  erb(:client_view)
end
