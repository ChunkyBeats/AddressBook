class Contact
  attr_reader(:name, :address, :birthday)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @address = attributes.fetch(:address)
    @birthday = attributes.fetch(:birthday)
  end
end
