class EspnHeadlines::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.espn.com/"))
  end

  def scrape_headlines_index
     self.get_page.css("div.headlineStack li a")
  end

  def make_headlines
    scrape_headlines_index.each do |r|
      EspnHeadlines::Headline.new_from_index_page(r)
    end
  end
end

#--
#<a name="&amp;lpos=fp:feed:1:coll:headlines:4" href="/nba/story/_/id/24797180/steve-kerr-hopes-warriors-unbelieveable-ru
#n-end-soon" class="" data-mptype="headline">Kerr: 2018-19 Warriors not like 1997-98 Bulls</a>

#<a name="&amp;lpos=fp:feed:1:coll:headlines:5" href="/college-football/story/_/id/24797781/kelly-bryant-relegated-clemso
#n-bench-misses-tuesday-practice" class="" data-mptype="headline">Demoted Clemson QB Bryant misses practice</a>

#<a name="&amp;lpos=fp:feed:1:coll:headlines:6" href="/nfl/story/_/id/24796861/neiron-ball-former-oakland-raiders-lb-medi
#cally-induced-coma-aneurysm" class="" data-mptype="headline">Former Raiders LB, 26, in coma after aneurysm</a>

#<a name="&amp;lpos=fp:feed:1:coll:headlines:7" href="/nfl/insider/story/_/id/24774911/nfl-jameis-winston-tampa-bay-bucca
#neers-short-long-term-dilemma" class=" icon-font-before icon-espnplus-before" data-mptype="headline">NFL execs on Bucs’
#Jameis Winston decision</a>
#-->
