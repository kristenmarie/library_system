require('rspec')
require('pg')
require('book')
require('patron')
require('checkout')
require('pry')

DB = PG.connect({:dbname => 'library_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM book *;")
    DB.exec("DELETE FROM patron *;")
    DB.exec("DELETE FROM checkout *;")
  end
end
