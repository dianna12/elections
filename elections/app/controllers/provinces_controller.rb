class ProvincesController < InheritedResources::Base
#load_and_authorize_resource
#def index
#  @provinces = Provinces.all
#end

def new
  @provinces = Provinces.new
end

def create 
end
def frekwencja 
	@prov = Province.find_by_id(params[:id]) 
	@constituency = Constituency.where("province_id = ? AND given_cards IS NOT NULL", params[:id]) 
	@voters = @constituency.sum(:authorized_number) 
	@cards = @constituency.sum(:given_cards) 
	if @voters != 0 && @cards!=0 
		@frekwencja = @cards*100/@voters 
	else 
		@frekwencja = 0 
	end 
end

  private

    def province_params
      params.require(:province).permit(:name, :mandate_number, :authorized_number)
    end
end

