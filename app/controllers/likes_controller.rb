class LikesController < ApplicationController
  def create
    increment_like unless recently_liked?
    redirect_to links_path
  end

  private

  def increment_like
    link.increment!(:likes)
    session[link_key(link)] = Time.current
  end

  def link_key(link)
    "link_#{link.id}"
  end

  def recently_liked?
    last_liked_at(link) > 1.minute.ago
  end

  def last_liked_at(link)
    session.fetch(link_key(link)) { Time.at(0) }
  end

  def link_id
    params.fetch(:link_id)
  end

  def link
    @link ||= Link.find(link_id)
  end
end
