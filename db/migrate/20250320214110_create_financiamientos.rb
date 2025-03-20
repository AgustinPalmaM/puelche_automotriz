class CreateFinanciamientos < ActiveRecord::Migration[8.0]
  def change
    create_table :financiamientos do |t|
      t.references :forma_pago, null: false, foreign_key: true
      t.integer :pie
      t.integer :saldo_precio
      t.integer :plazo
      t.integer :margen_credito
      t.integer :valor_cuota

      t.timestamps
    end
  end
end
