class Committee < ActiveRecord::Base
  validates :name, presence: true


  #has_attached_file :logo,
   #                 :styles => { :original =>"400x400>", :medium => "300x300>", :thumb => "100x100>" },
    #                :url => "/logos/:attachment/:style/:basename.:extension",
     #               :default_url => "/images/:attachment/:style/missing.png"

  #validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
