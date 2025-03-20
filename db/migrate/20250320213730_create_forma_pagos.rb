class CreateFormaPagos < ActiveRecord::Migration[8.0]
  def change
    create_table :forma_pagos do |t|
      t.references :venta, null: false, foreign_key: true
      t.integer :tipo_pago
      t.integer :monto_pago

      t.timestamps
    end
  end
end
