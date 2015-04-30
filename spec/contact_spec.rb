require('rspec')
require('contact')
require('pry')

describe('Contact') do
  before() do
    Contact.clear()
  end


  describe('#name') do
    it('returns the name of the contact') do
      new_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      expect(new_contact.name()).to(eq("Lee"))
    end
  end

  describe('#address') do
    it('returns the address of the contact') do
      new_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      expect(new_contact.address()).to(eq("1 1st Street"))
    end
  end

  describe('#birthday') do
    it('returns the name of the contact') do
      new_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      expect(new_contact.birthday()).to(eq("August 1, 1980"))
    end
  end

  describe('#id') do
    it('returns the id number of the contact') do
      new_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      new_contact.save()
      expect(new_contact.id()).to(eq(1))
    end
  end

  describe('#save') do
    it("adds a contact to the array of saved contacts") do
      test_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('#clear') do
    it("empties out the array of saved contacts") do
      test_contact = Contact.new({:name => "Lee", :address => "1 1st Street", :birthday => "August 1, 1980"})
      test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

end
