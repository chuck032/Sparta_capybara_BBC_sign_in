require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  #page constants
  USER_NAME = 'user-identifier-input'
  PASSWORD = 'password-input'
  SIGN_IN_BUTTON = '#submit-button'
  INCORRECT_USER_NAME_MESSAGE = '#form-message-username'
  INCORRECT_PASSWORD = '#form-message-password'

  def enter_user_name(username)
    fill_in USER_NAME, with: username
  end

  def enter_password(password)
    fill_in PASSWORD, with: password
  end

  def click_sign_in_button
    find(SIGN_IN_BUTTON).click
  end

  def email_error_message
    find(INCORRECT_USER_NAME_MESSAGE).text
  end

  def password_error_message
    find(INCORRECT_PASSWORD).text
  end
end
