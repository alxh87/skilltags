class SkillTag < ApplicationRecord
    has_many :skills

    validates :name, uniqueness: true

end
