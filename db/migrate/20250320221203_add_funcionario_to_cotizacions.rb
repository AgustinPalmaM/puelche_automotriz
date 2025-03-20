class AddFuncionarioToCotizacions < ActiveRecord::Migration[8.0]
  def change
    add_reference :cotizacions, :funcionario, null: false, foreign_key: true
  end
end
