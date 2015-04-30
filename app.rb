require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address_book')
require('./lib/contact')
require('./lib/phone')
require('./lib/electronicinfo')

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
