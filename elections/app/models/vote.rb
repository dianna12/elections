class Vote < ActiveRecord::Base
  belongs_to :committee
  belongs_to :constituency
  
  validates :number, presence: true, numericality: true
end
