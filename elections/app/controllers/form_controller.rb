class FormController < ApplicationController
  protect_from_forgery with: :exception
  helper_method :current_user, :current_user_session
  
  def index
    @const =current_user.constituency_id
    Constituency.where("id = ?", @const).each do |con|
      @con = con.name
    end
    @votes = Vote.where("constituency_id = ?", @const)

  end

  def list
    @const = current_user.constituency_id
    @committees = Committee.all
    @vote = Vote.new
  end
  
  #def show
  #	@vote = Vote.find(params[:id])
  #end


  
 private

    def vote_params
      params.require(:vote).permit(:number, :committee_id, :constituency_id)
    end

  
  
end
