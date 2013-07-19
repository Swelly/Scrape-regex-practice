require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open('https://news.ycombinator.com/news'))

#Finds all the things that have title as the class
doc.css('.title a').each do |title|
  puts title.text
  puts title.attributes["href"].first
  puts " "
end
#   puts title.subtext.lastchild
# end

# comments = []
# doc.search('.subtext').each do |subtext|
#   comments << subtext.text.split('|')[1]
# end

# comments = doc.css('.subtext a')[1].children.text
# puts comments

# puts doc.css('.title a').first
