class AddCantripsAndSkillsToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :cantrips, :string, array: true, default: []
    add_column :characters, :skills, :string, array: true, default: []
  end
end
