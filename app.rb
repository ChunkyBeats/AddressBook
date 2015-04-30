require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address_book')
require('./lib/contact')
require('./lib/phone')
require('./lib/electronicinfo')
require('pry')

get ('/') do
  erb(:index)
end

get ('/addressbooks') do
  @addressbooks = AddressBook.all()
  erb(:addressbooks)
end

get('/addressbooks/new') do
  erb(:book_form)
end

post('/addressbooks') do
  add_book = params.fetch('name')
  @addressbook = AddressBook.new({:book => add_book})
  @addressbook.save()
  @addressbooks = AddressBook.all()
  erb(:addressbooks)
end

get('/addressbooks/:id') do
  @contacts = Contact.all()
  @addressbook = AddressBook.find(params.fetch('id').to_i())
  erb(:addressbook)
end

post ('/contacts') do
  name = params.fetch('name')
  address = params.fetch('address')
  birthday = params.fetch('birthday')
  book_id = params.fetch('addressbook_id')
  @contacts = Contact.all()
  @new_contact = Contact.new({:name => name, :address => address, :birthday => birthday})
  @new_contact.save()
  @addressbook = AddressBook.find(params.fetch(book_id).to_i())
  @addressbook.add_contact(@new_contact)
  erb(:contacts)
end
