json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :mandate_number, :authorized_number
  json.url province_url(province, format: :json)
end
