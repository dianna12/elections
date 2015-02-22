ActiveAdmin.register Constituency do
permit_params :province, :province_id, :name, :mandate_number, :authorized_number,  :empty_votes, :many_votes, :other_votes, :given_cards, :urn_cards
  index do 
    selectable_column 
    id_column 
    column :name 
    column :province
    column :mandate_number
    column :authorized_number
    column :empty_votes
    column :many_votes
    column :other_votes
    column :given_cards
    actions 
 end
    
end
