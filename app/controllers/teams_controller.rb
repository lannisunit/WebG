class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    member_ids = params[:member_ids].to_a.reject(&:blank?)
    
    unless member_ids.size == 10
      redirect_to root_path
      return
    end
  
    Team.transaction do
      @team = Team.create!(team_params)
    
      member_ids.each do |id|
        @team.team_members.create!(member_id: id)
      end
    end
  
    redirect_to root_path
  
  rescue
    redirect_to root_path
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end