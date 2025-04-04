class Auto < ApplicationRecord
  has_many :cotizacions
  has_one :venta
  has_many_attached :photos

  def descripcion
    "#{marca} #{estilo} #{modelo}"
  end

  def precio_formateado
    precio.to_fs(:currency, delimiter: '.', precision: 0)
  end

  def precio_pie_20
    (precio * 0.2).to_fs(:currency, delimiter: '.', precision: 0)
  end

  def kilometraje_formateado
    kilometraje.to_fs(:delimited, delimiter: '.')
  end
end
