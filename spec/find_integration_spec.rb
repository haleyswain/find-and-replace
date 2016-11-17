require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the find path', :type=>:feature do
    it('takes multiple user inputs, and returns them as a silly sentence') do
      visit('/form')
      fill_in('sentence', :with => 'Darren doggedly dodge the daring dog.')
      fill_in('word_find', :with => 'dog')
      fill_in('word_replace', :with => 'cat')
      click_button('make it silly')
      expect(page).to have_content('Darren catgedly dodge the daring cat')
  end
end
