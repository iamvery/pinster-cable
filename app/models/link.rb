require "open_graph_adapter"

class Link < ApplicationRecord
  def title
    OpenGraphAdapter.new(url).title
  end
end
