ActiveAdmin.register Vote do
permit_params :number, :committee, :committee_id, :constituency, :constituency_id
  index do 
    selectable_column 
    id_column 
    column :number 
    column :committee
    column :constituency
    actions 
 end
   form do |f|
    f.inputs "Vote", :multipart => true do
      f.input :number
      f.input :committee, :as => :select, :committee => Committee.all.map{|u| ["#{u.name}", u.id]}
      f.input :constituency, :as => :select, :collection => Constituency.all.map{|u| ["#{u.name}", u.id]}
      f.actions
    end
  end
end
