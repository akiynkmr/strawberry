json.array!(@strawberries) do |strawberry|
  json.extract! strawberry, :id, :title, :body
  json.url strawberry_url(strawberry, format: :json)
end
