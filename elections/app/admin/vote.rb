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

#show do
#  table_for vote.constituency do
#    column "Empty Votes" do |constituency|
#      constituency.empty_votes
#    end
#    column "Many Votes" do |constituency|
#      constituency.many_votes
#    end
#    column "Other Votes" do |constituency|
#      constituency.other_votes
#    end
#  end
#end
end
