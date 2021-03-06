require 'rails_helper'

RSpec.describe "On the first visit to the site", :js => true do
  it "displays a screen id" do
    skip("Javascript timeout due to intentional infinite loop for device")
    visit '/'

    wait_for_ajax

    expect(page).to have_content("Screen ID: ")
  end
end
