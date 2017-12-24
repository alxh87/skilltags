class SkillTagsController < ApplicationController
  def index
  	@skill_tags = SkillTag.all
  end

  def show
  	@skill_tag = SkillTag.find(params[:id])

  	@skills = @skill_tag.skills
  		.includes(:user, :endorsements)
      .left_joins(:endorsements)
      .group(:id)
      .order('COUNT(endorsements.id) DESC')

  end
end

