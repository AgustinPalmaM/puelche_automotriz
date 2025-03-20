class CreateVehiculoPartePagos < ActiveRecord::Migration[8.0]
  def change
    create_table :vehiculo_parte_pagos do |t|
      t.references :forma_pago, null: false, foreign_key: true
      t.integer :valor_vpp
      t.string :patente
      t.integer :monto_reparaciones
      t.string :observaciones

      t.timestamps
    end
  end
end
