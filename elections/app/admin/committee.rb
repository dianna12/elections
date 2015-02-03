ActiveAdmin.register Committee do
  permit_params :name, :logo_file_name

  index :as => :grid do |committee|
    div do
      a :href => admin_committee_path(committee) do
        image_tag committee.logo.url(:medium)
      end
    end
    a truncate(committee.name), :href => admin_committee_path(committee)
  end

end
