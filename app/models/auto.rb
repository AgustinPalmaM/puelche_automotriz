class Auto < ApplicationRecord
  has_many :cotizacions
  has_one :venta
end
