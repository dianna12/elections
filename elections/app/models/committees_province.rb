class CommitteesProvince < ActiveRecord::Base
  belongs_to :committee
  belongs_to :province
end
