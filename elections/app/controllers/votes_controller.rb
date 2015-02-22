class VotesController < InheritedResources::Base
  
  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def show
    @vote = Vote.find(params[:id])
  end

  def create
    @vote = Vote.where( "committee_id = ? AND constituency_id = ?", params[:committee_id], params[:constituency_id])
    if @vote==nil
      respond_to do |format|
        if @vote.update_attributes(vote_params)
          format.html { redirect_to @vote, notice: 'vote was successfully updated.' }
          format.json { render :index, status: :created, location: @vote }
        else
          format.html { render :edit }
        end
      end
    else  
      @vote = Vote.create(vote_params)
      respond_to do |format|
        if @vote.save
          format.html { redirect_to form_index_path, notice: 'vote was successfully created.' }
          format.json { render :index, status: :created, location: @vote }
        else
          format.html { render :new }
          format.json { render json: @vote.errors, status: :unprocessable_entity }
        end
      end
    end
  end
 
    def edit
      @vote = Vote.find(params[:id])
      @cons = @vote.constituency_id
      @com = @vote.committee_id
    end
  def update
    @vote = Vote.find(params[:id])
    respond_to do |format|
      if @vote.update_attributes(vote_params)
        format.html { redirect_to form_index_path, notice: 'vote was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
 

  private

    def vote_params
      params.require(:vote).permit(:number, :committee_id, :constituency_id)
    end
end

