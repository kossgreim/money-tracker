require 'rails_helper'

describe 'Login', type: :feature, js: true do
  before do
    @user = create(:user)
    @login_page = LoginPage.new
    @login_page.visit
  end
  feature 'with valid creditials' do
    before do
      @login_page.sign_in(@user.email, @user.password)
    end
    scenario 'creates a new account' do
      expect(page).to have_content('Sign out')
    end
    scenario 'redirect after successfull login' do
      expect(page).to have_content('main page')
      #expect(current_path).to eq('#/')
    end
  end
end
