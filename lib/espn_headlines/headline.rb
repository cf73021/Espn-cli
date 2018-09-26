class EspnHeadlines::Headline

  attr_accessor :headline, :url, :author

  @@all = []

  def self.new_from_index_page(r)
    self.new(
      r.text,
      r['href']
      )
  end

  def initialize(headline=nil, url=nil)
    @headline = headline
    @url = "http://www.espn.com" + url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def author
    @author ||= doc.css("div.author.has-bio").children[0].text
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

end
