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

  it('allows a user to click a word link and route to the word id webpage') do
    visit('/')
    fill_in('word', :with => 'Midnight')
    fill_in('definition', :with =>'a weird way to describe eating')
    click_button('Enter')
    click_link('Midnight')
    expect(page).to have_content('a weird way to describe eating')
  end

  it('allows a user to click a word link and route to the word id webpage') do
    visit('/')
    fill_in('word', :with => 'leftovers')
    click_button('Enter')
    click_link('leftover')
    click_button('Return to Homepage')
    expect(page).to have_content('Welcome To The Custom Word Definer Webpage!')
  end

end
