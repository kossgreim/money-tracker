require 'rails_helper'

describe 'registration', type: :feature, js: true do
  feature 'with valid creditials' do
    skip
    scenario 'creates a new account' do
      visit '#/sign_up'
      expect(page).to have_content('Registration')
      user = build(:user)
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      fill_in 'Password confirmation', with: user.password

      expect(page).to have_countent('Sign out')
    end
  end
end
