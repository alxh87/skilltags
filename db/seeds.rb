# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
	SkillTag.create(name: Faker::ProgrammingLanguage.name)	
end

10.times do
	SkillTag.create(name: Faker::Lorem.words(1).first.capitalize)	
end

20.times do |i|
	User.create(name: Faker::Name.name, email: "#{i}@skilltags.com", password: '123456', password_confirmation: '123456')
end

200.times do
	Skill.create(user_id: rand(20)+1, skill_tag_id: rand(SkillTag.count)+1)
end

300.times do
	Endorsement.create(user_id: rand(20)+1, skill_id: rand(Skill.count)+1)
end