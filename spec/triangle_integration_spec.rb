require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('sideA', :with => '3')
    fill_in('sideB', :with => '4')
    fill_in('sideC', :with => '5')
    click_button('Triangle?')
    expect(page).to(have_content('scalene right triangle'))
  end
end
