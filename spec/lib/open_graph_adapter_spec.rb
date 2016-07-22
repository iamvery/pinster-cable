require "spec_helper"
require "open_graph_adapter"

RSpec.describe OpenGraphAdapter do
  let(:lib) { double(:open_graph_class) }
  let(:instance) { double(:open_graph_instance) }
  let(:url) { "http://example.com" }

  before do
    allow(lib).to receive(:new) { instance }
    allow(instance).to receive(:title)
  end

  describe "#initialize" do
    it "creates a new instance of the Open Graph library with its URL" do
      described_class.new(url, lib: lib)

      expect(lib).to have_received(:new).with(url)
    end
  end

  describe "#title" do
    it "returns Open Graph instance title" do
      adapter = described_class.new(url, lib: lib)
      adapter.title

      expect(instance).to have_received(:title)
    end
  end
end
