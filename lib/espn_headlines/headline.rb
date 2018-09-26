class EspnHeadlines::Headline

  attr_accessor :headline, :url, :section

  @@all = []

  def self.new_from_index_page(r)
    self.new(
      r.text,
      r['href']
      )
  end

  def initialize(headline=nil, url=nil)
    @headline = headline
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

  def string_between_markers (marker1, marker2)
    self[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1]
  end
end
