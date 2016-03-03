require "rails_helper"
require "support/fake_open_graph"

RSpec.describe FakeOpenGraph do
  describe "#title" do
    context "url is valid" do
      it "returns titleized domain part of url" do
        og = described_class.new("http://some_thing.net")

        expect(og.title).to eq("Some Thing")
      end
    end
  end
end
