class Contact
  @@contacts = []
  attr_reader(:name, :address, :birthday, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @address = attributes.fetch(:address)
    @birthday = attributes.fetch(:birthday)
    @id = @@contacts.length().+(1)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

end
