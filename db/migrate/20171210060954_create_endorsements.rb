class CreateEndorsements < ActiveRecord::Migration[5.1]
  def change
    create_table :endorsements do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
