require 'nokogiri'
require 'open-uri'

url = 'https://yomou.syosetu.com/rank/list/type/total_total/'

charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)
doc.xpath('//div[@class="ranking_list"]').each do |node|
  p node.at('span[@class="ranking_number"]').inner_text
  p node.at('span[@class="attention"]').inner_text
  p node.at('span[@class="marginleft"]').inner_text
  p node.css('a').inner_text
  p "---------"
end
