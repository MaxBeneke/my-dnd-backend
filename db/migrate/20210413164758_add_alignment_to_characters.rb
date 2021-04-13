class AddAlignmentToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :alignment, :string
  end
end
