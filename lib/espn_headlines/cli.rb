class EspnHeadlines::CLI

  def call
    EspnHeadlines::Scraper.new.make_headlines
    puts "Welcome to ESPN Headlines!"
    start
  end

  def start
    puts ""

    print_headlines

    puts ""
    puts "Which headline would you like more information on?"
    input = gets.strip

    headline = EspnHeadlines::Headline.find(input.to_i)

    print_headline(headline)

    puts ""
    puts "Would you like to see another headline? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end

  def print_headline(headline)
    puts ""
    puts "----------- #{headline.headline} -------------"
    puts "-- URL: #{headline.url} --"
    puts "-- AUTHOR: #{headline.author} --"
  end

  def print_headlines
    puts ""
    puts "---------- Headlines ----------"
    puts ""
    EspnHeadlines::Headline.all[1, 10].each.with_index(1) do |headline, index|
      puts "#{index}. #{headline.headline}"
    end
  end

end
