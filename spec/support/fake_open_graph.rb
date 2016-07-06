require "uri"

class FakeOpenGraph
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def title
    domain.titleize
  end

  private

  def domain
    host.split(".").first
  end

  def host
    uri.host
  end

  def uri
    URI(url)
  end
end
