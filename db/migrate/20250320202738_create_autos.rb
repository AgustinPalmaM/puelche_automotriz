class CreateAutos < ActiveRecord::Migration[8.0]
  def change
    create_table :autos do |t|
      t.string :marca
      t.string :estilo
      t.string :modelo
      t.string :color
      t.integer :anio
      t.integer :costo
      t.integer :precio
      t.string :transmision
      t.string :traccion
      t.string :combustible
      t.string :categoria
      t.integer :estado
      t.boolean :publicado

      t.timestamps
    end
  end
end
