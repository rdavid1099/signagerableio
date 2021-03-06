require 'rails_helper'

RSpec.describe "When an admin visits /admin/devices" do
  it "they see a list of devices" do
    user = User.create(email: "admin@email.com", password: "password")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    device = create(:device)

    visit '/admin/devices'

    expect(page).to have_content("#{device.id}")
    expect(page).to have_content("#{device.device_code}")
  end
end
