class Province < ActiveRecord::Base
 validates :name, presence: true,  length: {minimum: 7}
 validates :mandate_number, presence: true, numericality: true
 validates :authorized_number, presence: true, numericality: true

end
