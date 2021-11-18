require 'rails_helper'

RSpec.feature "Visitor navigates to Add to cart", type: :feature, js: true do

  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    save_screenshot
  end

end