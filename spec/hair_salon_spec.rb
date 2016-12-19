require("spec_helper")

RSpec.configure do |config|
  config.color = true
  config.after(:each) do
    DB.exec("DELETE FROM stylists *;")
  end
end

describe('Stylist') do

  describe('.all') do
    it('starts out empty') do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a stylist with matching ID") do
      test_stylist = Stylist.new({:name => "Tom Jones", :id => nil})
      test_stylist.save()
      test_stylist2 = Stylist.new({:name => "Bonnie Rait", :id => nil})
      test_stylist2.save()
      expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
    end
  end

  describe('#save') do
    it "adds the instance it's run on to the stylists table" do
    test_stylist = Stylist.new({:name => "Tom Jones", :id => nil})
    test_stylist.save()
    expect(Stylist.all()).to(eq([test_stylist]))
    end
  end
end
