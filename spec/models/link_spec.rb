require "rails_helper"

RSpec.describe Link do
  describe "#title" do
    it "returns the open graph title" do
      link = Link.new(url: "http://google.com")
      title = link.title

      expect(title).to eq("Google")
    end
  end
end
