class CreateTable < ActiveRecord::Migration[6.1]
  def change
    create_table :table do |t|
      t.string :name
      t.string :atomic_mass
      t.integer :number
      t.integer :period
      t.string :category
      t.string :symbol
      t.integer :xpos
      t.integer :ypos
      t.string :shell

      t.timestamps
    end
  end
end
