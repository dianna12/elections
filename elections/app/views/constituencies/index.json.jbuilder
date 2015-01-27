json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :number, :mandate_number, :authorized_number, :empty_votes, :many_votes, :other_votes, :given_cards, :urn_cards, :province_id
  json.url constituency_url(constituency, format: :json)
end
