class Skill < ApplicationRecord
	belongs_to :user
	belongs_to :skill_tag
	
	has_many :endorsements

	validates_uniqueness_of :user_id, :scope => :skill_tag_id
end
