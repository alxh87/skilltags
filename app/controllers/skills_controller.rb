class SkillsController < ApplicationController
  def create
    p params
    @user = User.find(params[:user_id])
    @owner = @user == current_user
  	@skill_tag = SkillTag.find(params[:skill_id])
    @existing_skill = existing_skill(@skill_tag)

    if @existing_skill
    	@existing_skill.destroy! if @owner
    else
    	@skill = Skill.new(user: @user, skill_tag: @skill_tag)
    	@skill.save!
    end

    respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.js   { }
    end
  end


  private

  def existing_skill(skill_tag)
  	@skill = @user.skills.where(skill_tag_id: skill_tag).first
  end
end
