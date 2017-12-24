class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :skills
  has_many :skill_tags, through: :skills

  has_many :endorsements

  before_create :set_blank_name
 
  private

  def set_blank_name
  	if self.name == nil
	    self.name = ""
	  end
  end
end
