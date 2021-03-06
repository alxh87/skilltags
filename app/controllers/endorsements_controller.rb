class EndorsementsController < ApplicationController
  def create
    @skill = Skill.find(params[:skill_id])
    @user = @skill.user
    @endorsed = endorsed(@skill)

    if @endorsed
    	@endorsed.destroy!
    else
    	@endorsement = Endorsement.new(user_id: current_user.id, skill: @skill)
    	@endorsement.save!
    end

    respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js   { }
    end

  end


  private

  def endorsed(skill)
  	current_user.endorsements.where(skill: skill).first
  end
end
