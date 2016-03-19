json.array!(@products) do |product|
  json.extract! product, :id, :title, :price, :year, :storyline, :genres, :release_date, :runtime, :image_url
  json.url product_url(product, format: :json)
end
