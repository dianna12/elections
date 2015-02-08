class VotesController < InheritedResources::Base
  def index
    @votes = Vote.all
  end

  def new
    @cvote = Vote.new
  end

  def show
    @vote = Vote.find(params[:id])
  end
  private

    def vote_params
      params.require(:vote).permit(:number, :committee_id, :constituency_id)
    end
end

