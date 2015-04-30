require('rspec')
require('pry')
require('phone')

describe('Phone') do
  describe('#phone1') do
    it('returns the primary phone number of a contact') do
      new_phone = Phone.new({:phone1 => "503-777-7777"})
      expect(new_phone.phone1()).to(eq("503-777-7777"))
    end
  end
end
