class FormtwoController < ApplicationController

  def index
  	@user = current_user.constituency_id
    Constituency.where("id = ?", @user).each do |const|
    	@constituency = const
    end
  end

  def edit
    @constituenc = Constituency.find_by_id(current_user.constituency_id)
    
    if @constituenc.authorized_number ==nil
    	@constituenc.authorized_number =0
    end
    if @constituenc.mandate_number == nil
    	@constituenc.mandate_number =0
    end
    if @constituenc.given_cards==nil
    	@constituenc.given_cards=0
    end
    @prov= @constituenc.province_id
  end
  

  def update
  	@constituency = Constituency.find(params[:id])
    respond_to do |format|
      if @constituency.update_attributes(params[:constituency])
        format.html { redirect_to formtwo_index_path(current_user.constituency_id), notice: 'constituency was successfully updated.' }
        #format.json { render :index, status: :ok, location: @constituency }
      else
        format.html { render :edit }
        #format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end
end
