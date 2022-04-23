namespace :parser do

  task :flux_rss => :environment do

    require 'rss'
    require 'open-uri'
  
    url = 'https://www.lemonde.fr/rss/en_continu.xml'
    URI.open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      puts "Title: #{feed.channel.title}"
      feed.items.each do |item|
        Article.create(
          title: item.title, 
          #image: nil, 
          content:item.description
        )
      end
    end
    puts "parsing done"
  end
end
