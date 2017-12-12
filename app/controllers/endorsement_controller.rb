class EndorsementController < ApplicationController
  def create
  	@user = current_user.id
    @skill = params[:skill_id]
    @endorsement = Endorsement.new(user_id: @user, skill_id: @skill)

    
    if @endorsement.save!
      redirect_to user_path(@user)
    else
     redirect_to root_path
    end
  end
end
