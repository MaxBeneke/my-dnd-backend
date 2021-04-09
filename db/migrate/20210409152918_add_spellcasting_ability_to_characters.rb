class AddSpellcastingAbilityToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :spellcasting_ability, :string
  end
end
