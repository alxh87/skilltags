class Skill < ApplicationRecord
	belongs_to :user
	belongs_to :skill_tag
	
	has_many :endorsements
end
