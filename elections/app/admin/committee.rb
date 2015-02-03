ActiveAdmin.register Committee do
  permit_params :name, :image, :avatar_file_name
  index :as => :grid do |committee|
    div do
      a :href => admin_committee_path(committee) do
        image_tag committee.avatar.url(:medium)

      end
    end
    a truncate(committee.name), :href => admin_committee_path(committee)
  end
  form do |f|
  	f.inputs "Committee", :multipart => true do
  		f.input :name
  		f.input :avatar
  		f.actions
  	end	
  end

end
