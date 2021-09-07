class RenameShellColumnToShells < ActiveRecord::Migration[6.1]
  def change
    rename_column :elements, :shell, :shells
  end
end
