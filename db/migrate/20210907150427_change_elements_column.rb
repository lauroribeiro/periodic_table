class ChangeElementsColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :elements, :atomic_mass, :decimal
  end
end
