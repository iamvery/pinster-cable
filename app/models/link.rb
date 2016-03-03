class Link < ApplicationRecord
  def title
    Rails.configuration.open_graph_lib.new(url).title
  end
end
