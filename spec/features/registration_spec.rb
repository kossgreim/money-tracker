require 'rails_helper'

describe 'registration', type: :feature, js: true do
  feature 'with valid creditials' do
    scenario 'creates a new account' do
      visit '#/user_registrations/new'
      expect(page).to have_content('Registration')
      user = build(:user)
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      fill_in 'Password confirmation', with: user.password

      expect{click 'Register'}.to change(User.count).by(+1)
    end
  end
end
