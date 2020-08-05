class ScrapingController < ApplicationController
  def index
    # mechanizeクラスをインスタンス化する。
    agent = Mechanize.new
    # URLを設定する。
    url = 'https://web.sapmed.ac.jp/canmol/coronavirus/index.html?n=j'
    # getメソッドでURLのHTML情報を取得する。
    page = agent.get(url)
    # searchメソッドで引数に当てはまる要素を全て取得する。
    @elements = page.search('index__item__link')
    # logに出力する。
    puts @elements
  end
end