class CommitteesController < InheritedResources::Base

  def index
    @committees = Committee.all
  end

  def new
    @committee = Committee.new
  end

  def show
    @committee = Committee.find(params[:id])
  end

  def create
    @committee = Committee.create(committee_params)
    respond_to do |format|
    if @committee.save
      format.html { redirect_to @committee, notice: 'Committee was successfully created.' }
      format.json { render :show, status: :created, location: @committee }
    else
      format.html { render :new }
      format.json { render json: @committee.errors, status: :unprocessable_entity }
    end
  end
end

  def edit
    @committee = Committee.find(params[:id])
  end

  #def update
  #  respond_to do |format|
  #    if @committee.update(committee_params)
  #      format.html { redirect_to @committee, notice: 'Committee was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @committee }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @committee.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  def set_committee
    @committee = Committee.find(params[:id])
  end
  
  def committee_params
    params.require(:committee).permit(:name, :avatar)
  end
  
end


