require "rails_helper"
require "support/fake_open_graph"

RSpec.describe Link do
  describe "#title" do
    it "returns the open graph title" do
      link = Link.new(url: "http://google.com")
      title = link.title(FakeOpenGraph)

      expect(title).to eq("Google")
    end
  end
end
