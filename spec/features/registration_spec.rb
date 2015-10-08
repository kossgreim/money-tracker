require 'rails_helper'

discribe 'registration', type: :feature, js: true do
  feature 'with valid creditials' do
    scenario 'creates a new account' do
      visit '#/user_registrations/new'
      expect(page).to have_content('Registration')
    end
  end
end
