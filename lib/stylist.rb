class Stylist
  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = nil
  end

  define_method(:id) do
    @id = DB.exec("SELECT FROM stylists WHERE name = #{@name}")
  end

  define_method(:delete) do |id|
    DB.exec("DELETE FROM stylists WHERE id = #{id};")
  end

  define_method(:==) do |other|
    same_class = self.class().eql?(other.class())
    same_name = self.name().eql?(other.name())
    same_class.&(same_name)
  end

  define_method(:save) do
    DB.exec("INSERT INTO stylists (name) VALUES ('#{@name}');")

  end

  define_singleton_method(:all) do
    returned_stylists = DB.exec("SELECT * FROM stylists;")
    stylists = []
    returned_stylists.each() do |stylist|
      name = stylist.fetch("name")
      id = stylist.fetch("id").to_i()
      stylists.push(Stylist.new({:name => name, :id => id}))
    end
    stylists
  end

  define_singleton_method(:find) do |id|
    result = DB.exec("SELECT * FROM stylists WHERE id = #{id};")
    name = result.first().fetch("name")
    Stylist.new({:name => name, :id => id})
  end

end
