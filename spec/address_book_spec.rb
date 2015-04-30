require('rspec')
require('pry')
require('address_book')
require('contact')

describe('AddressBook') do
  before() do
    AddressBook.clear()
  end

  describe('#book') do
    it('returns the name of the address book') do
      test_abn = AddressBook.new({:book => "Buddy's Contacts"})
      expect(test_abn.book()).to(eq("Buddy's Contacts"))
    end
  end

  describe('#save') do
    it('saves the address book to an array of address books') do
      test_abn = AddressBook.new({:book => "Buddy's Contacts"})
      test_abn.save()
      expect(AddressBook.all()).to(eq([test_abn]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(AddressBook.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("returns an address book by its id number") do
      test_book1 = AddressBook.new({:book => "Buddy's Contacts"})
      test_book1.save()
      test_book2 = AddressBook.new({:book => "Fred's Contacts"})
      test_book2.save()
      expect(AddressBook.find(test_book1.id())).to(eq(test_book1))
    end
  end

  describe('.clear') do
    it("clears the address books") do
      test_book1 = AddressBook.new({:book => "Buddy's Contacts"})
      test_book1.save()
      test_book2 = AddressBook.new({:book => "Fred's Contacts"})
      test_book2.save()
      AddressBook.clear()
      expect(AddressBook.all()).to(eq([]))
    end
  end

  describe('#add_contact') do
    it("adds a contact to an address book") do
      test_book = AddressBook.new({:book => "Buddy's Contacts"})
      test_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      test_book.add_contact(test_contact)
      expect(test_book.contacts()).to(eq([test_contact]))
    end
  end
end
