# require 'mechanize'

# class Scraping < ApplicationRecord
#   def self.scrape
#     agent = Mechanize.new
#     url = 'https://graphics.reuters.com/CHINA-HEALTH-MAP-LJA/0100B5FZ3S1/index.html'
#     page = agent.get(url)
#     elements = page.search('title')
#     puts elements
#   end
# end
