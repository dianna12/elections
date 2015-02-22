class ConstituenciesController < InheritedResources::Base
  #load_and_authorize_resource
  def show
    @constituency = Constituency.find(params[:id])
  end
  def edit
  	@constituency = Constituency.find(params[:id])
  end
  def update
    @constituency = Constituency.find(params[:id])
    respond_to do |format|
      if @constituency.update_attributes(constituency_params)
        format.html { redirect_to formtwo_index_path, notice: 'constituency was successfully updated.' }
        #format.json { render :, status: :ok, location: @constituency }
      else
        format.html { render :edit }
        #format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  def frekwencja 
    @con = Constituency.find_by_id(params[:id]) 
    @constituency = Constituency.where("province_id = ? AND given_cards IS NOT NULL", params[:id]) 
    @voters = @constituency.sum(:authorized_number) 
    @cards = @constituency.sum(:given_cards) 
    if @voters != 0 && @cards!= 0 
      @frekwencja = @cards*100/@voters 
    else 
      @frekwencja = 0 
    end 
  end
  private

    def constituency_params
      params.require(:constituency).permit(:name, :mandate_number, :authorized_number, :empty_votes, :many_votes, :other_votes, :given_cards, :province_id)
    end
end

