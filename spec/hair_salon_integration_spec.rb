require('spec_helper')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("adding a stylist and viewing their unique page", :type => :feature) do
  it("allows a manager to view all stylists and add new ones") do
    visit('/')
    click_on("manage stylists")
    fill_in('name_input', :with => "Tom Jones")
    click_on('add stylist')
    expect(page).to have_content("Tom Jones")
  end
end

describe("view an individual stylist and update or delete them", :type => :feature) do
  it("allows manager to see the stylist, their clients, and change the stylists name") do
    visit('/')
    click_on("manage stylists")
    fill_in('name_input', :with => "Tom Jones")
    click_on('add stylist')
    click_on("Tom Jones")
    expect(page).to have_content("Tom Jones")
  end
end

describe("add clients to a stylist and view them individually", :type => :feature) do
  it("allows manager to assign clients to a stylist") do
    visit('/')
    click_on("manage stylists")
    fill_in('name_input', :with => "Tom Jones")
    click_on('add stylist')
    click_on("Tom Jones")
    fill_in("new_client_name", :with => "Michael Andrade")
    click_on("add client")
    click_on("Michael Andrade")
    expect(page).to have_content("Michael Andrade")
  end
end
