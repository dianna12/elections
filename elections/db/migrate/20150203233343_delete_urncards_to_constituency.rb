class DeleteUrncardsToConstituency < ActiveRecord::Migration
	remove_column :constituencies, :urn_cards
  def change
  end
end
