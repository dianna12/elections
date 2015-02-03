class Committee < ActiveRecord::Base
   has_attached_file :avatar,
                     :styles => { :medium => "300x300>", :thumb => "100x100>" },
                     :default_url => "/images/:style/missing.png"
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
validates :name, presence: true
validates :mandate_number, presence: true, numericality: true
validates :authorized_number, presence: true, numericality: true
end
