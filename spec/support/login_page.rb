class LoginPage
  include Capybara::DSL

  def sign_in(email, password)
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'
  end

  def visit
    Capybara.visit '#/sign_in'
  end
end
