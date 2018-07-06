require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word count webpages links and buttons functionality', {:type => :feature}) do
  it('shows the submitted word on the homepage') do
    visit('/')
    fill_in('word', :with => 'CapyBara Test')
    click_button('Enter')
    expect(page).to have_content('CapyBara Test')
  
  end
end
