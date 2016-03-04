class LikesController < ApplicationController
  def create
    link.increment!(:likes)
    redirect_to links_path
  end

  private

  def link_id
    params.fetch(:link_id)
  end

  def link
    @link ||= Link.find(link_id)
  end
end
