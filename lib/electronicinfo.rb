class ElectronicInfo
  attr_reader(:email, :email2, :website)

  define_method(:initialize) do |attributes|
    @email = attributes.fetch(:email)
    @email2 = attributes.fetch(:email2)
    @website = attributes.fetch(:website)
  end
end
