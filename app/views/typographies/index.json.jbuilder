json.array!(@approved_typographies) do |typography|
  json.extract! typography, :id, :title, :url, :source, :include
  json.url typography_url(typography, format: :json)
end
