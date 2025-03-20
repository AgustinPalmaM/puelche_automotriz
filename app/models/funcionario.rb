class Funcionario < ApplicationRecord
  has_many :cotizacions
  has_many :ventas
end
