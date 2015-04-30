require('rspec')
require('contact')
require('pry')

describe('Contact') do
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
end
