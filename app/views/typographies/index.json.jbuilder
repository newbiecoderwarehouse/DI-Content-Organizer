json.array!(@typographies) do |typography|
  json.extract! typography, :id, :title, :url, :source
  json.url typography_url(typography, format: :json)
end
