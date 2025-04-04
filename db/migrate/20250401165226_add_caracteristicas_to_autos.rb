class AddCaracteristicasToAutos < ActiveRecord::Migration[6.0]
  def change
    add_column :autos, :caracteristicas, :string, array: true, default: []
  end
end
