class AddTraitsToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :traits, :string, array: true, default: []
  end
end
