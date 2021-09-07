class CreateElementsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.string :name
      t.decimal :atomic_mass
      t.integer :number
      t.integer :period
      t.string :category
      t.string :symbol
      t.integer :xpos
      t.integer :ypos
      t.string :shells

      t.timestamps
    end
  end
end
