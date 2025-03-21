class AddKilometrajeToAuto < ActiveRecord::Migration[8.0]
  def change
    add_column :autos, :kilometraje, :integer
  end
end
