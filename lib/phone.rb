class Phone
  attr_reader(:phone1)

  define_method(:initialize) do |attributes|
    @phone1 = attributes.fetch(:phone1)
  end
end
