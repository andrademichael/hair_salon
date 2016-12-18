class Client
  attr_reader(:name)

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:==) do |other|
    same_class = self.class().eql?(other.class())
    same_name = self.name().eql?(other.name())
    same_class.&(same_name)
  end
end
