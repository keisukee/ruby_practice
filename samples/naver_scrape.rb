require 'nokogiri'
require 'open-uri'

url = 'https://matome.naver.jp/'

charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)
doc.xpath('//li[@class="mdTopMTMList01Item"]').each do |node|
  p node.at('a[@id="video-title"]').inner_text
end
