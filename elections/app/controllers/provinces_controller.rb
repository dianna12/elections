class ProvincesController < InheritedResources::Base

#def index
#  @provinces = Provinces.all
#end

def new
  @provinces = Provinces.new
end

def create 
end

  private

    def province_params
      params.require(:province).permit(:name, :mandate_number, :authorized_number)
    end
end

