class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
  	@userskills = current_user.skills.includes(:skill_tag, :endorsements) #.includes(:skill_tags)
  end
end
