ActiveAdmin.register Constituency do
permit_params :number, :mandate_number, :authorized_number, :province_id, :empty_votes, :many_votes, :other_votes, :given_cards, :urn_cards
end