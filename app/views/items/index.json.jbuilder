json.array!(@items) do |item|
  json.extract! item, :id, :title, :desc, :price, :inv_qty
  json.url item_url(item, format: :json)
end
