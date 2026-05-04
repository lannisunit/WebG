class HomeController < ApplicationController
  def index
    @member = Member.new
    @team = Team.new
    @members = Member.order(:name)
    @teams = Team.order(created_at: :desc)
    @team1 = []
    @team2 = []
  end

end
