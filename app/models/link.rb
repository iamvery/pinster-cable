require "open_graph_adapter"

class Link < ApplicationRecord
  def title(open_graph = Rails.configuration.open_graph)
    open_graph.new(url).title
  end
end
