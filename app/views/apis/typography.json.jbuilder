if !@approved_typographies.nil?
json.results @approved_typographies do |content|
  json.title content.title
  json.image content.image
  
end
end