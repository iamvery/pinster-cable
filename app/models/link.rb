require "open_graph_adapter"

class Link < ApplicationRecord
  def title(open_graph = OpenGraphAdapter)
    open_graph.new(url).title
  end
end
