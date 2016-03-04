require "rails_helper"

RSpec.describe "liking links", type: :feature do
  it "increments like count when link is liked"

  describe "rate limiting" do
    it "prevents liking more than once per minute"

    it "allows liking after a minute has passed"
  end
end
