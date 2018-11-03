class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :skill_title
      t.integer :percent_utilize

      t.timestamps
    end
  end
end
