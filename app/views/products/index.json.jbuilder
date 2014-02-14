json.array!(@products) do |product|
  json.extract! product, :price, :link, :description, :image
  json.url product_url(product, format: :json)
end
