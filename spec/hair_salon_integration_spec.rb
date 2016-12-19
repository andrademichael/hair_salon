require("spec_helper")

feature("adding a stylist and viewing their unique page") do
  it("allows a manager to view all stylists and add new ones") do
    visit('/')
    click_on("manage stylists")
    fill_in('name_input', :with => "Tom Jones")
    click_on('add stylist')
    expect(page).to have_content("Tom Jones")
  end
end
