class AddExtraColumnsToElements < ActiveRecord::Migration[6.1]
  def change
    add_column :elements, :appearance, :string
    add_column :elements, :boil, :decimal
    add_column :elements, :color, :string
    add_column :elements, :density, :string
    add_column :elements, :discovered_by, :string
    add_column :elements, :melt, :decimal
    add_column :elements, :molar_heat, :decimal
    add_column :elements, :named_by, :string
    add_column :elements, :phase, :string
    add_column :elements, :source, :string
    add_column :elements, :spectral_img, :string
    add_column :elements, :summary, :string
    add_column :elements, :electron_configuration, :string
    add_column :elements, :electron_configuration_semantic, :string
    add_column :elements, :electron_affinity, :decimal
    add_column :elements, :electronegativity_pauling, :decimal
    add_column :elements, :ionization_energies, :string
  end
end
