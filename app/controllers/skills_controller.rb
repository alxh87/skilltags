class SkillsController < ApplicationController
  def create
  	@skill_tag = SkillTag.find(params[:skill_id])
    @existing_skill = existing_skill(@skill_tag)

    if @existing_skill
    	@existing_skill.destroy!
    else
    	@skill = Skill.new(user_id: current_user.id, skill_tag: @skill_tag)
    	@skill.save!
    end

    respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.js   { }
    end
  end


  private

  def existing_skill(skill_tag)
  	current_user.skills.where(skill_tag_id: skill_tag).first
  end
end
