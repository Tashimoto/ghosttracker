class CreateGhosts < ActiveRecord::Migration
  def change
    create_table :ghosts do |t|
      t.string :name
      t.string :location
      t.string :difficulty_level
      t.text :features

      t.timestamps null: false
    end
  end
end
