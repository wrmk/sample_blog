require "rails_helper"

feature "contact creation" do
  scenario "alows acces to contact page" do
    visit '/contacts'

    expect(page).to have_content 'Contact us'
  end
end