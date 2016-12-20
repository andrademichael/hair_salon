class Client
  attr_reader(:name, :stylist_id, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch("name")
    @id = attributes[:id]
    @stylist_id = attributes[:stylist_id]
  end

  define_method(:==) do |other|
    same_id = self.id().eql?(other.id())
    same_name = self.name().eql?(other.name())
    same_id.&(same_name)
  end

  define_method(:save) do
    DB.exec('INSERT INTO clients (name, id, stylist_id) VALUES ("#{@name}", "#{@id}", "{@stylist_id}") RETURNING id;')
  end

end
