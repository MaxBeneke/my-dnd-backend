class AddWisdomToProficiencyList < ActiveRecord::Migration[6.1]
  def change
    add_column :proficiency_lists, :wisdom, :boolean
  end
end
