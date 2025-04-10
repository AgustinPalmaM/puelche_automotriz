class Public::PagesController < ApplicationController
  def home
    @destacados = Auto.all.limit(4)
  end

  def financiamiento
  end

  def consignacion
  end

  def compra
  end

  def nosotros
  end

  def contacto
  end
end
