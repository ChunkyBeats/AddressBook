class AddressBook
  @@addressbooks = []
  attr_reader(:book, :id, :contacts)

  define_method(:initialize) do |attributes|
    @book = attributes.fetch(:book)
    @id = @@addressbooks.length().+(1)
    @contacts = []
  end

  define_singleton_method(:clear) do
    @@addressbooks = []
  end

  define_singleton_method(:all) do
    @@addressbooks
  end

  define_method(:save) do
    @@addressbooks.push(self)
  end

  define_singleton_method(:find) do |book_id|
    found_book = nil
    @@addressbooks.each() do |addressbook|
      if addressbook.id() == book_id.to_i()
        found_book = addressbook
      end
    end
    found_book
  end

  define_method(:add_contact) do |contact|
    @contacts.push(contact)
  end
end
