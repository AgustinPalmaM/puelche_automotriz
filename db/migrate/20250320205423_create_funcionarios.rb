class CreateFuncionarios < ActiveRecord::Migration[8.0]
  def change
    create_table :funcionarios do |t|
      t.string :nombre
      t.string :rut
      t.string :email
      t.integer :rol, default: 0, null: false
      t.integer :sucursal, default: 0, null: false

      t.timestamps
    end

    add_index :funcionarios, :rut, unique: true
    add_index :funcionarios, :email, unique: true
  end
end
