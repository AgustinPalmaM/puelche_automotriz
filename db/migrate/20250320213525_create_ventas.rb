class CreateVentas < ActiveRecord::Migration[8.0]
  def change
    create_table :ventas do |t|
      t.references :funcionario, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.references :cotizacion, null: false, foreign_key: true
      t.references :auto, null: false, foreign_key: true
      t.integer :precio_lista
      t.string :descuento_integer
      t.integer :valor_transferencia
      t.integer :estado

      t.timestamps
    end
  end
end
