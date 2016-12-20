require("spec_helper")

DB = PG.connect({:dbname => 'hair_salon_test'})

describe("adding a stylist and viewing their unique page", :type => :feature) do
  it("allows a manager to view all stylists and add new ones") do
    visit('/')
    click_on("manage stylists")
    fill_in('name_input', :with => "Tom Jones")
    click_on('add stylist')
    expect(page).to have_content("Tom Jones")
  end
end
describe("view an individual stylist and update or delete them") do
  it("allows manager to see the stylist, their clients, and change the stylists name") do
    visit('/')
    click_on("manage stylists")
    fill_in('name_input', :with => "Tom Jones")
    click_on('add stylist')
    click_on("Tom Jones")
    fill_in("new_name", :with => "Tim Johns")
    click_on("delete stylist")
    expect(page).to have_content("Tim Johns")
  end
end
