require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open('http://www.reddit.com/'))

doc.css('.title a').each do |link|
  puts link.text
  puts link.attributes["href"].value
end

# 3.times do
# next_link = doc.css('.spacer .nextprev').last.children[1].attributes["href"].value
# doc = Nokogiri
# doc.css('.author').each do |name|
#   puts name.text
#   puts name.attributes["href"].value
# end


# Titles, links
#poster names, links to accounts
