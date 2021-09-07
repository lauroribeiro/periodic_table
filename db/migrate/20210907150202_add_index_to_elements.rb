class AddIndexToElements < ActiveRecord::Migration[6.1]
  def change
    add_index :elements, :name, unique: true
  end
end
