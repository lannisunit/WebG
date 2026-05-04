class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to root_path 
    else
      redirect_to root_path
    end
  end

  private

  def member_params
    params.require(:member).permit(:name)
  end
end