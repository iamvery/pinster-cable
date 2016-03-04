require "rails_helper"

RSpec.describe "liking links", type: :feature do
  it "increments like count when link is liked" do
    Link.create!(url: "http://iamvery.com")

    visit links_path

    expect(page).to have_content("0 ews")

    click_on "Ew!"

    expect(page).to have_content("1 ew")
  end

  describe "rate limiting" do
    before do
      Link.create!(url: "http://iamvery.com")
    end

    it "prevents liking more than once per minute" do
      visit links_path
      click_on "Ew!"
      click_on "Ew!"

      expect(page).to have_content("1 ew")
    end

    include ActiveSupport::Testing::TimeHelpers

    it "allows liking after a minute has passed" do
      visit links_path
      click_on "Ew!"
      travel 2.minutes do
        click_on "Ew!"
      end

      expect(page).to have_content("2 ews")
    end
  end
end
