class AddSlugToSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :slug, :string
    add_index :skills, :slug, unique: true
  end
end
