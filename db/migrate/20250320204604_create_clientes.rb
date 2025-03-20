class CreateClientes < ActiveRecord::Migration[8.0]
  def change
    create_table :clientes do |t|
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :rut
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.integer :genero, default: 0, null: false
      t.date :fecha_nacimiento
      t.integer :estado_civil, default: 0, null: false

      t.timestamps
    end

    add_index :clientes, :rut, unique: true
    add_index :clientes, :email, unique: true
    #Ex:- add_index("admin_users", "username")
  end
end
