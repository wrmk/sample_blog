require "rails_helper"

feature "account creation" do
  scenario "alows guest to create account" do
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@email.com'
    fill_in :user_username, :with => 'john'
    fill_in :user_password, :with => 'testpassword1'
    fill_in :user_password_confirmation, :with => 'testpassword1'
    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end