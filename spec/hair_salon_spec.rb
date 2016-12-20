require("spec_helper")

describe('Stylist') do

  describe('.all') do
    it('starts out empty') do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it "adds the instance it's run on to the stylists table" do
    test_stylist = Stylist.new({:name => "Tom Jones", :id => nil})
    test_stylist.save()
    expect(Stylist.all()).to(eq([test_stylist]))
    end
  end

  describe("#==") do
    it "compares two stylists and returns true if their names are identical" do
      test_stylist = Stylist.new({:name => "Tom Jones", :id => nil})
      test_stylist.save()
      test_stylist2 = Stylist.new({:name => "Tom Jones", :id => nil})
      test_stylist2.save()
      expect(test_stylist2 == test_stylist).to(eq(true))
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

  describe("#delete") do
    it "removes a stylist from the database" do
      test_stylist = Stylist.new({:name => "Tom Jones", :id => nil})
      test_stylist.save()
      test_stylist.delete()
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe("#clients") do
    it "returns an array of all the stylists clients" do
      test_stylist = Stylist.new({:name => "Tom Jones", :id => 1})
      test_stylist.save()
      test_client = Client.new({:name => "Michael", :stylist_id => 1})
      test_client.save()
      expect(test_stylist.clients()).to(eq([test_client]))
    end
  end
end

describe("Client") do
  describe("#save") do
    it("saves a client to the database") do
      test_client = Client.new({:name => "Jimmy John", :id => nil, :stylist_id => 1})
      test_client.save()
      expect(Client.all).to(eq([test_client]))
    end
  end

  describe("#==") do
    it("compares clients names and stylist ids") do
      test_client = Client.new({:name => "Jimmy John", :id => nil, :stylist_id => 1})
      test_client.save
      test_client2 = Client.new({:name => "Jimmy John", :id => nil, :stylist_id => 1})
      test_client2.save
    end
  end
end
