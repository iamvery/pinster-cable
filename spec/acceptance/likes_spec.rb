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
    it "prevents liking more than once per minute"

    it "allows liking after a minute has passed"
  end
end
