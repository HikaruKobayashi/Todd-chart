class ScrapingController < ApplicationController
  def index
    agent = Mechanize.new
    url = 'https://vdata.nikkei.com/newsgraphics/coronavirus-chart-list/'
    page = agent.get(url)
    @elements = page.search('title')
    puts @elements
  end
end