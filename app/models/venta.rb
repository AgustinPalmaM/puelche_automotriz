class Venta < ApplicationRecord
  belongs_to :funcionario
  belongs_to :cliente
  belongs_to :cotizacion, optional: true
  belongs_to :auto
  has_many :forma_pagos
end
