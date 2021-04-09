class CreateBackgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :backgrounds do |t|
      t.string :skills, array: true, default: []
      t.text :desc
      t.string :name

      t.timestamps
    end
  end
end
