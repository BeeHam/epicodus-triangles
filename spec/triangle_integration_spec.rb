require('capybara/rspec')
require('./app')
require('launchy')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

include Capybara::DSL

describe('triangles proccess and path') do
  it('processes the user query and returns the type of triangle') do
    visit('/')
    fill_in('side1', :with => 15)
    fill_in('side2', :with => 15)
    fill_in('side3', :with => 30)
    click_button('Submit')
    expect(page).to have_content("isosceles")
  end
end
