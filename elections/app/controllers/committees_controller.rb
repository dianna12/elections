class CommitteesController < InheritedResources::Base

  def index
    @committees = Committee.all
  end

  def new
    @committee = Committee.new
  end

  def show
  end

  def create
    @committee = Committee.new(committee_params)
    if @committee.save
      flash[:notice] = "Successfully added."
      redirect_to root_url
    else
      flash[:notice] = "There was a problem."
      render :action => :new
  end
end

private
  def committee_params
    params.require(:committee).permit(:name, :logo, :image)
  end
end
