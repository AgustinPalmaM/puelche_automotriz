# app/services/auto_import.rb
class CargaStock
  require 'roo'

  def initialize(file)
    @file = file
  end

  def call
    # Abre el archivo Excel
    xlsx = Roo::Spreadsheet.open(@file)

    # Asume que los datos están en la primera hoja
    sheet = xlsx.sheet(0)

    # Recorre cada fila del archivo, empezando desde la segunda fila (asumiendo que la primera fila son los encabezados)
    sheet.each_row_streaming(offset: 1) do |row|
      # Aquí mapeamos las columnas del archivo Excel a los atributos del modelo Auto
      Auto.create(
        patente: row[0].value,
        marca: row[2].value,
        estilo: row[3].value,
        modelo: row[4].value,
        color: row[6].value,
        anio: row[5].value,
        costo: row[11].value,
        precio: row[12].value,
        transmision: row[8].value,
        traccion: row[7].value,
        combustible: row[9].value,
        categoria: 'Automovil',
        estado: 0,
        publicado: true,
        kilometraje: row[10].value
      )
    end
  end
end
