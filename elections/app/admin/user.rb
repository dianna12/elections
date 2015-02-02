ActiveAdmin.register User do
permit_params :login, :password,  :email, :admin, :constituency
actions :all, :change_role, :change_constituency

  index do
    selectable_column
    id_column
    column :login
    column :password
    column :email
    column :role
    column :constituency
    column :created_at
    actions defaults: true do |user|
      link_to 'Change role', change_role_admin_user_path(user)
      link_to 'Change constituency', change_constituency_admin_user_path(user)
    end
  end

 

  form do |f| 
    f.inputs "User", :multipart => true do 
      f.input :login 
      f.input :password 
      f.input :password_confirmation 
      f.input :email 
      f.input :role, :as => :select, :collection => User::ROLES
      f.input :constituency, :as => :select, :collection => Constituency.all.map{|u| ["#{u.name}", u.id]}
      f.actions 
    end 
  end
 member_action :change_role, method: :get do
    @user = User.find(params[:id])
  end
  member_action :change_constituency, method: :get do
    @user = User.find(params[:id])
  end

end
