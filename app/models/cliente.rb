class Cliente < ApplicationRecord
  has_many :cotizacions
  has_many :ventas
end
