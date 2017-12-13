class EndorsementController < ApplicationController
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

      redirect_to user_path(@user)

  end




  def endorsed(skill)
  	current_user.endorsements.where(skill_id: skill).first
  end
end
