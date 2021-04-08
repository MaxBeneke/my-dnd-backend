class CreateProficiencyLists < ActiveRecord::Migration[6.1]
  def change
    create_table :proficiency_lists do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.boolean :strength
      t.boolean :dexterity
      t.boolean :constitution
      t.boolean :intelligence
      t.boolean :charisma
      t.boolean :acrobatics
      t.boolean :animal_handling
      t.boolean :arcana
      t.boolean :athletics
      t.boolean :deception
      t.boolean :history
      t.boolean :insight
      t.boolean :intimidation
      t.boolean :investigation
      t.boolean :medicine
      t.boolean :nature
      t.boolean :perception
      t.boolean :performance
      t.boolean :persuasion
      t.boolean :religion
      t.boolean :sleight_of_hand
      t.boolean :stealth
      t.boolean :survival

      t.timestamps
    end
  end
end
