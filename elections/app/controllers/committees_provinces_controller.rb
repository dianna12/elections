class CommitteesProvincesController < InheritedResources::Base

  private

    def committees_province_params
      params.require(:committees_province).permit(:committee_id, :province_id)
    end
end

