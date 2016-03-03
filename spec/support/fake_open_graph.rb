class FakeOpenGraph
  DOMAIN_EXPR = /https?:\/\/(?<domain>.+)\.[a-z]+/i # http://rubular.com/r/IfjM1EnM4d

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def title
    match = url.match(DOMAIN_EXPR)
    match[:domain].titleize
  end
end
