class AddPatenteToAuto < ActiveRecord::Migration[8.0]
  def change
    add_column :autos, :patente, :string
  end
end
