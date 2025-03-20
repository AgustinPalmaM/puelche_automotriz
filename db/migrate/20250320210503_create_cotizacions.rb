class CreateCotizacions < ActiveRecord::Migration[8.0]
  def change
    create_table :cotizacions do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :auto, null: false, foreign_key: true
      t.integer :precio_cotizado
      t.string :observaciones
      t.integer :estado

      t.timestamps
    end
  end
end
