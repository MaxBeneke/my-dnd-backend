class AddClassToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :class, :string
  end
end
