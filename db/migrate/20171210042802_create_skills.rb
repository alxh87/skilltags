class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.integer :skill_tag_id

      t.timestamps
    end
  end
end
