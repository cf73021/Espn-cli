class HboMovies::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.hbo.com/movies/catalog"))
  end

  def scrape_movies_index
     self.get_page.css("div#modules/cards/CatalogCard--poster modules/cards/MovieCatalogCard--posterDimensions modules/cards/MovieCatalogCard--loaded img title")
  end

  def make_movies
    scrape_movies_index.each do |r|
      HboMovies::Movie.new_from_index_page(r)
    end
  end
end
