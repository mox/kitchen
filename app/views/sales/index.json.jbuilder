json.array!(@sales) do |sale|
  json.extract! sale, :id, :title, :description, :is_public, :image
  json.url sale_url(sale, format: :json)
end
