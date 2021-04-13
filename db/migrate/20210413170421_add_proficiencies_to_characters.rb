class AddProficienciesToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :proficiencies, :string, array: true, default: []
  end
end
