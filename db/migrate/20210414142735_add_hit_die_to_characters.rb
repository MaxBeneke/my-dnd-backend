class AddHitDieToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :hit_die, :integer
  end
end
