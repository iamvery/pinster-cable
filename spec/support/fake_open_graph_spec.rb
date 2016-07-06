require "rails_helper"
require "support/fake_open_graph"

RSpec.describe FakeOpenGraph do
  describe "#title" do
    it "returns the titled domain name of the URL" do
      og = described_class.new("http://some_web_page.com")

      expect(og.title).to eq("Some Web Page")
    end
  end
end
