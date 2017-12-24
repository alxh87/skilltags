class UsersController < ApplicationController
  before_action :authenticate_user!
	before_action :find_user, only: :show


  def profile
      redirect_to user_path(current_user)
  end

  def index
  	@users = User.all
  end

  def show
    @skills = @user.skills
      .includes(:skill_tag, :endorsements)
      .left_joins(:endorsements)
      .group(:id)
      .order('COUNT(endorsements.id) DESC')


  	@current_user_endorsements = current_user.endorsements
  	@skill_tags = SkillTag.all - @user.skill_tags
  end

  private

  def find_user
    @user = User.find(params[:id])
  end


end
