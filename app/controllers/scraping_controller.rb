class ScrapingController < ApplicationController
  def index
    # mechanizeクラスをインスタンス化する。
    agent = Mechanize.new
    # 英国放送協会(BBC)をスクレイピング対象に設定する。
    url = 'https://www.bbc.com/news/world-51235105'
    # getメソッドでURLのHTML情報を取得する。
    page = agent.get(url)
    # searchメソッドで引数に当てはまる要素を全て取得する。
    @elements = page.search('table')
    @elements.each do |element|
      puts element.inner_text
    end
  end
end