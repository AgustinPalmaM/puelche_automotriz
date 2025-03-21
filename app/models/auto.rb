class Auto < ApplicationRecord
  has_many :cotizacions
  has_one :venta
  has_many_attached :photos
end
