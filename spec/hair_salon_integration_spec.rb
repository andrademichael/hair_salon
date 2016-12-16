require("spec_helper")

# describe("doing something", :type => :feature) do
#   it("lets some kind of user do something") do
#     click_some_stuff
#     expect_some_other_stuff
#   end
# end

feature("adding a stylist") do
  it "allows a manager to view all stylists and add new ones" do
    visit('/')
    fill_in('stylist_name', :with => "Tom Jones")
    click_on('add stylist')
    expect(page).to have_content("Tom Jones")
  end
end
