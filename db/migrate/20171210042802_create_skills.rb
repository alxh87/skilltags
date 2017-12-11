class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.references :user
      t.references :skill_tag

      t.timestamps
    end
  end
end
