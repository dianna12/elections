json.array!(@committees_provinces) do |committees_province|
  json.extract! committees_province, :id, :committee_id, :province_id
  json.url committees_province_url(committees_province, format: :json)
end
