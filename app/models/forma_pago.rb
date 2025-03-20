class FormaPago < ApplicationRecord
  belongs_to :venta
  has_one :financiamiento
  has_many :vehiculo_parte_pagos
end
