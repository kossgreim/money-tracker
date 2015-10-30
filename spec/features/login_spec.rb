require 'rails_helper'

describe 'Login', type: :feature, js: true do
  before do
    @user = create(:user)
    @login_page = LoginPage.new
  end
  feature 'with valid creditials' do
    before(:each) do
      @login_page.visit
      @login_page.sign_in(@user.email, @user.password)
    end

    scenario 'logins to a new account' do
      expect(page).to have_content('Welcome')
    end
    scenario 'redirect after successfull login' do
      expect(page).to have_content('Sing out')
    end
  end
end
