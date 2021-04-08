class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.integer :level
      t.integer :armorclass
      t.integer :speed
      t.string :subclass
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :hp_current
      t.integer :hp_max
      t.string :weapons, array: true, default: []
      t.string :spells, array: true, default: []
      t.string :equipment, array: true, default: []
      t.string :background
      t.string :race
      t.string :subrace
      t.integer :gold
      t.text :ideals
      t.text :flaws
      t.text :bonds
      t.text :personality
      t.string :features, array: true, default: []
      t.string :languages, array: true, default: []

      t.timestamps
    end
  end
end
