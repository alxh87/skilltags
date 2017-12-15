class UsersController < ApplicationController

	before_action :find_user, only: :show


  def index
  	@users = User.all
  end

  def show
  	@skills = @user.skills.includes(:skill_tag, :endorsements)
  	@current_user_endorsements = current_user.endorsements
  end

  private

  def find_user
    @user = User.find(params[:id])
  end


end
