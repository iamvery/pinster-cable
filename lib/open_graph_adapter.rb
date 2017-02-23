require "open_graph"

class OpenGraphAdapter
  def initialize(url, lib: OpenGraph)
    @open_graph = lib.new(url)
  end

  def title
    open_graph.tilte
  end

  private

  attr_reader :open_graph
end
