class Cotizacion < ApplicationRecord
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :auto
end
