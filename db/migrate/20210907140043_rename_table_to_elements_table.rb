class RenameTableToElementsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :table, :elements
  end
end
