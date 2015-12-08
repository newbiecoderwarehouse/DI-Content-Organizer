require 'open-uri'
url = open("http://newbiecoderwarehouse.github.io/design-inspiration-api/apis/typography.json").read
json_data = JSON.parse(url)
@content = json_data["results"]
@content.each do |x|
  Typography.create!(:title => x["title"], :url => x["link"], :source => x["source"])
end