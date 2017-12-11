class Skill < ApplicationRecord
	belongs_to :user
	has_one :skill_tag
end
