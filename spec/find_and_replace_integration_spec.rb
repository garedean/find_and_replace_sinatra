require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("The '/adjusted' path", {:type => :feature}) do
  it('replaces one word with another') do
    visit('/')
    fill_in('phrase', :with => 'I am a dog person. I love dogs!')
    fill_in('target', :with => 'dog')
    fill_in('substitute', :with => 'cat')
    click_button('Swap!')
    expect(page).to have_content('I am a cat person. I love cats!')
  end
end
