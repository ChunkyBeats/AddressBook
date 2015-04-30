require('rspec')
require('electronicinfo')
require('pry')

describe('ElectronicInfo') do

  describe('#email') do
    it('returns the primary email address') do
      new_einfo = ElectronicInfo.new({:email => "test123@website.tv", :email2 => "doitagain@place.com", :website => "test.com"})
      expect(new_einfo.email()).to(eq("test123@website.tv"))
    end
  end

  describe('#email2') do
    it('returns the secondary email address') do
      new_einfo = ElectronicInfo.new({:email => "test123@website.tv", :email2 => "doitagain@place.com", :website => "test.com"})
      expect(new_einfo.email2()).to(eq("doitagain@place.com"))
    end
  end

  describe('#email') do
    it('returns the website address') do
      new_einfo = ElectronicInfo.new({:email => "test123@website.tv", :email2 => "doitagain@place.com", :website => "test.com"})
      expect(new_einfo.website()).to(eq("test.com"))
    end
  end


end
