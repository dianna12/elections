class Constituency < ActiveRecord::Base
  belongs_to :province

  validates :name, presence: true
  validates :mandate_number, presence: true, numericality: true
  validates :authorized_number, presence: true, numericality: true
  validates :empty_votes, presence: true, numericality: true
  validates :many_votes, presence: true, numericality: true
  validates :other_votes, presence: true, numericality: true
  validates :given_cards, presence: true, numericality: true
 

  def set_constituencies
    @constituencies = Constituency.all.map do |constituency|
      [ constituency.name, constituency.id]
    return @constituencies
  end
end
  def constituency_params
      params.require(:constituency).permit(:name, :mandate_number, :authorized_number, :empty_votes, :many_votes, :other_votes, :given_cards, :province_id)
    end
end

