class DeleteUrncardsToConstituency < ActiveRecord::Migration
  def change
  	remove_column :constituencies, :urn_cards
  end
end
