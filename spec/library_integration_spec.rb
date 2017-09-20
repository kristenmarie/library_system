require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('redirecting to admin page', {:type => :feature}) do
  it('allows the user to access the admin page') do
    visit('/')
    click_link('I am an administrator')
    expect(page).to have_content('Access book catalogue')
  end
end

describe('redirect to admin_patrons page', {:type => :feature}) do
  it('allows the user to access the admin page') do
    visit('/admin')
    click_link('Access patron catalogue')
    expect(page).to have_content('Patron Catalogue')
  end
end