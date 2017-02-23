require "spec_helper"
require "open_graph_adapter"

RSpec.describe OpenGraphAdapter do
  let(:lib) { class_double(OpenGraph) }
  let(:instance) { instance_double(OpenGraph) }
  let(:url) { "http://example.com" }

  before do
    allow(lib).to receive(:new) { instance }
    allow(instance).to receive(:tilte)
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

      expect(instance).to have_received(:tilte)
    end
  end
end
