require('rspec')
require('contact')
require('pry')

describe('Contact') do
  describe('#name') do
    it('returns the name of the contact') do
      new_name = Contact.new("Lee")
      expect(new_name.name()).to(eq("Lee"))
    end
  end
  describe('#address') do
    it('returns the address of the contact') do
      new_address = Contact.new("1 1st Street")
      expect(new_address.address()).to(eq("1 1st Street"))
    end
  end
  describe('#birthday') do
    it('returns the name of the contact') do
      new_birthday = Contact.new("August 1, 1980")
      expect(new_birthday.()).to(eq("August 1, 1980"))
    end
  end
end
