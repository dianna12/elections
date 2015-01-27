json.array!(@votes) do |vote|
  json.extract! vote, :id, :number, :committee_id, :constituency_id
  json.url vote_url(vote, format: :json)
end
