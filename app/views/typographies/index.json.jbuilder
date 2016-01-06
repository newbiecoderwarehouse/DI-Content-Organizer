json.array!(@approved_typographies) do |typography|
  json.extract! typography, :id, :title, :image
  json.url typography_url(typography, format: :json)
end
