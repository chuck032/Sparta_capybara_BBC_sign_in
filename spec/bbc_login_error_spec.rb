require 'spec_helper'
require_relative '../lib/generate/Generate_data'

describe 'Incorrect user details produces valid error' do

  context 'It should respond with the correct error when incorrect details are input' do

    it "should produce an error when inputting an incorrect username to an invalid account" do
      @bbc_site = BbcSite.new
      @user_name = GenerateData.new.generate_form_data.gen_lorem_user_name
      @password = GenerateData.new.generate_form_data.gen_password
      @bbc_site.bbc_homepage.visit_home_page
      #Click sign in link
      @bbc_site.bbc_homepage.click_sign_in
      #Fill in username on sign in page
      #Use you generator
      @bbc_site.bbc_sign_in_page.enter_user_name(@user_name)
      #Fill in password on sign in page
      #Use your generator
      @bbc_site.bbc_sign_in_page.enter_password(@password)
      #Click sign in button on sign in page
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      #Assert - error is 'Sorry, we can't find an account with that username. If you're over 13, try your email address instead or get help here.'
      expect(@bbc_site.bbc_sign_in_page.email_error_message).to eq "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here."
    end

    it "Should produce an error when inputting an incorrect username eamil to an invalid account" do
      @bbc_site = BbcSite.new
      @user_name = GenerateData.new.generate_form_data.gen_lorem_user_email
      @password = GenerateData.new.generate_form_data.gen_password
      @bbc_site.bbc_homepage.visit_home_page
      #Click sign in link
      @bbc_site.bbc_homepage.click_sign_in
      #Fill in username on sign in page
      #Use you generator
      @bbc_site.bbc_sign_in_page.enter_user_name(@user_name)
      #Fill in password on sign in page
      #Use your generator
      @bbc_site.bbc_sign_in_page.enter_password(@password)
      #Click sign in button on sign in page
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      #Assert - error is 'Sorry, we can't find an account with that username. If you're over 13, try your email address instead or get help here.'
      expect(@bbc_site.bbc_sign_in_page.email_error_message).to eq "Sorry, we can’t find an account with that email. You can register for a new account or get help here."
    end

    it "Should produce an error when inputting an incorrect password to a valid user name email" do
      @bbc_site = BbcSite.new
      @password = GenerateData.new.generate_form_data.gen_password
      @bbc_site.bbc_homepage.visit_home_page
      #Click sign in link
      @bbc_site.bbc_homepage.click_sign_in
      #Fill in username on sign in page
      #Use you generator
      @bbc_site.bbc_sign_in_page.enter_user_name('user@gmail.com')
      #Fill in password on sign in page
      #Use your generator
      @bbc_site.bbc_sign_in_page.enter_password(@password)
      #Click sign in button on sign in page
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      #Assert - error is 'Sorry, we can't find an account with that username. If you're over 13, try your email address instead or get help here.'
      expect(@bbc_site.bbc_sign_in_page.password_error_message).to eq  "Uh oh, that password doesn’t match that account. Please try again."
    end













  end

end
