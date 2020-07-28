require "rails_helper"

feature "contact creation" do
  scenario "alows acces to contact page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end