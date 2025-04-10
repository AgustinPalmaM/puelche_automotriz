# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts 'Creando autos de prueba...'

# CargaStock.new('/home/agustin/Desktop/puelche_automotriz/app/services/Stock.xlsx').call

# Auto.create!([
#                {
#                  marca: 'Toyota',
#                  estilo: 'Corolla',
#                  modelo: 'GLI 2.0 XEI',
#                  color: 'Blanco',
#                  anio: 2020,
#                  costo: 7_500_000,
#                  precio: 9_500_000,
#                  transmision: 'Automática',
#                  traccion: 'Delantera',
#                  combustible: 'Gasolina',
#                  categoria: 'Sedan',
#                  publicado: true,
#                  estado: 0, # disponible
#                  kilometraje: 34_000,
#                  patente: ,
#                  caracteristicas: []
#                },
#                {
#                  marca: 'Hyundai',
#                  estilo: 'Tucson',
#                  modelo: 'GL 2.0 5P',
#                  anio: 2019,
#                  color: 'Gris',
#                  costo: 8_500_000,
#                  precio: 11_000_000,
#                  kilometraje: 46_000,
#                  combustible: 'Diesel',
#                  transmision: 'Mecánica',
#                  traccion: '4x2',
#                  categoria: 'SUV',
#                  publicado: true,
#                  estado: 0 # disponible
#                },
#                {
#                  marca: 'Kia',
#                  estilo: 'Rio',
#                  modelo: '4 RB GB 1.4 AC',
#                  anio: 2021,
#                  color: 'Rojo',
#                  costo: 6_800_000,
#                  precio: 8_800_000,
#                  kilometraje: 21_000,
#                  combustible: 'Gasolina',
#                  transmision: 'Automática',
#                  traccion: 'Delantera',
#                  categoria: 'Hatchback',
#                  publicado: true,
#                  estado: 0 # disponible
#                }
#              ])

# puts 'Autos creados con éxito'

# file_path = Rails.root.join('db', 'data', 'stock_puelche.csv')

# # db/seeds.rb

# require 'csv'

# # Ruta del archivo CSV usando Rails.root
# file_path = Rails.root.join('db', 'data', 'stock_puelche.csv')

# # Leer el archivo CSV
# CSV.foreach(file_path, headers: true) do |row|
#   # Los valores de cada columna (asegúrate de que coincidan con el nombre de tus columnas)
#   marca = row['Marca']
#   estilo = row['Estilo']
#   modelo = row['Modelo']
#   anio = row['Año']
#   color = row['Color']
#   costo = row['Costo']
#   precio = row['Precio']
#   transmision = row['Transmision']
#   traccion = row['Traccion']
#   combustible = row['Combustible']
#   categoria = row['Categoria']
#   estado = row['Estado']
#   kilometraje = row['Kms']
#   patente = row['Patente']

#   costo = costo.gsub(/[^\d]/, '').to_i
#   precio = precio.gsub(/[^\d]/, '').to_i

#   Auto.create!(
#     marca: marca,
#     estilo: estilo,
#     modelo: modelo,
#     anio: anio,
#     color: color,
#     costo: costo,
#     precio: precio,
#     transmision: transmision,
#     traccion: traccion,
#     combustible: combustible,
#     categoria: categoria,
#     estado: estado,
#     kilometraje: kilometraje,
#     patente: patente
#   )
# end

patentes = [
  {
    patente: 'JZZH84',
    caracteristicas: [
      'Sistema encendido AUTO START-STOP',
      'Direccion electricamente asistida',
      'Climatizador bizona',
      'Radio con pantalla LCD 8 tactil y 6 parlantes',
      'Camara y sensores de retroceso',
      'Asientos de piloto con ajuste electrico',
      'Airbags frontales - rodilla - laterales - cortina',
      'Alzavidrios Eléctricos',
      'Llantas aleacion 17',
      'Frenos de disco en las 4 ruedas',
      'Freno de mano electrico',
      'Barras de techo laterales',
      'ABS en las 4 ruedas',
      'Llave con apertura a distancia',
      'Transmisión Automática'
    ]
  },
  {
    patente: 'JYBG96',
    caracteristicas: [
      'Direccion hidraulica',
      'Aire acondicionado con salida para pasajeros traseros',
      'Manija de sujecion para subida de pasajeros',
      'Camara y sensores de retroceso',
      'Puerta lateral corrediza',
      'Airbags conductor y acompanante',
      'Alzavidrios Eléctricos',
      'Asientos 17 + 1',
      'Frenos con ABS en las 4 ruedas',
      'Pisadera electrica retractil',
      'Portaequipaje interior sobre asientos',
      'Bandeja portaobjetos de techo',
      'Rodado trasero doble',
      'ABS en las 4 ruedas',
      'Llave con apertura a distancia',
      'Motor diesel',
      'Transmisión Mecanica  de 6 velocidades'
    ]
  },
  {
    patente: 'LLSV89',
    caracteristicas: [
      'Dirección asistida',
      'Airbags',
      'Barras en techo',
      'Aire acondicionado con climatizador',
      'Radio con pantalla touch - bluetooth y 4 parlantes',
      'Cámara retroceso',
      'Frenos ABS con EBD',
      'Llantas y freno de discos en las 4 ruedas',
      'Cierre centralizado',
      'Comandos de radio al volante',
      'Sensores de retroceso',
      'Tansmision mecanica de 5 velocidades',
      'Freno de estacionamiento eléctrico',
      'Motor bencinero'
    ]
  },
  {
    patente: 'KTXW45',
    caracteristicas: [
      'Dirección hidráulica',
      'Airbags',
      'Aire acondicionado',
      'Espejos electricos',
      'Computadora de abordo I-System',
      'Alzavidrios electricos',
      'Cierre centralizado',
      'Radio mp3, bluetooth, lector de tarjetas SD y puerto USB',
      'Sistema de frenos ABS con EBD',
      'Llantas de aleación',
      'Frenos de disco en ruedas delanteras',
      'Transmisión Mecanica de 5 velocidades',
      'Motor bencinero'
    ]
  },
  {
    patente: 'RJPB97',
    caracteristicas: [
      'Dirección asistida',
      'Climatizador',
      'Alzavidrios eléctricos',
      'Cierre centralizado con mando a distancia',
      'Espejos eléctricos',
      'Radio multimedia con pantalla',
      'Camara y sensores de retroceso',
      'Boton de encendido',
      'Control crucero',
      'Control electrónico de tracción',
      'Airbags frontales - laterales - cortina',
      'Barras de techo',
      'Motor bencinero',
      'Transmisión mecánica'
    ]
  },
  {
    patente: 'RGPW13',
    caracteristicas: [
      'Dirección asistida',
      'Aire Acondicionado',
      'Frenos de discos delanteros con abs+ebd',
      'Doble Airbag frontal',
      'Anclaje isofix para silla niños (2)',
      'Sensor de retroceso',
      'Cámara de retroceso',
      'Radio multimedia con pantalla táctil',
      'Cierre centralizado con mando a distancia',
      'Alzavidrios eléctricos',
      'Motor bencinero',
      'Transmisión mecánica de 6 velocidades'
    ]
  },
  {
    patente: 'HLXX73',
    caracteristicas: [
      'Dirección servoasistida',
      'Airbags',
      'Aire acondicionado',
      'Espejos electricos',
      'Barras de techo',
      'Alzavidrios electricos',
      'Cierre centralizado',
      'Radio con pantalla touch',
      'Llantas de aleación',
      'Frenos de disco en ruedas delanteras',
      'Traccion 4X4 selectiva',
      'Transmisión Mecanica de 5 velocidades',
      'Motor bencinero'
    ]
  },
  {
    patente: 'SVHV54',
    caracteristicas: [
      'Dirección eléctrica',
      'Airbags',
      'Barras en techo',
      'Aire acondicionado',
      'Radio con pantalla',
      'Cámara retroceso',
      'Frenos ABS',
      'Llantas con freno de discos en las 4 ruedas',
      'Cierre centralizado',
      'Transmisión Automatica',
      'Control de estabilidad',
      'Control crucero',
      'Traccion AWD',
      'Freno de estacionamiento eléctrico',
      'Motor bencinero'
    ]
  },
  {
    patente: 'KSCY40',
    caracteristicas: [
      'Dirección asistida electricamente',
      'Aire Acondicionado con climatizador dual',
      '3 Corridas de asientos',
      'Comando de apertura remota',
      'Computador a bordo',
      'Airbags frontales y laterales',
      'Camara de retroceso',
      'Sensores de estacionamiento traseros',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Control crucero',
      'Radio CD con MP3 y 6 altavoces',
      'Navegador con pantalla táctil de 7',
      'Comandos radio al volante',
      'Equipo Multimedia DVD',
      'Frenos de disco ventilados en las 4 ruedas con ABS y EBD',
      'Freno de estacionamiento de pedal',
      'Llantas de aleacion',
      'Barras de techo',
      'Cierre centralizado',
      'Motor diesel',
      'Transmisión mecanica de 6 velocidades'
    ]
  },
  {
    patente: 'PRGF73',
    caracteristicas: [
      'Encendido con botón',
      'Sistema de encendido por control remoto (encendido motor a distancia)',
      '6 Airbags',
      'Aire acondicionado automático climatizador dual',
      'Vidrios eléctricos delanteros y traseros',
      'Cierre centralizado con sensor de velocidad y apertura remota',
      'ABS en 4 ruedas con freno de disco',
      'Control de estabilidad electrónica',
      'Asistencia de frenado avanzado',
      'Control de tracción',
      'Llantas aluminio 17',
      'Sistema multimedia Uconnect 4 con pantalla 7',
      'Camara de retroceso (ParkView® trasera)',
      'Control de Velocidad Crucero',
      'Controles de audio en el volante',
      'Asiento conductor con memoria',
      'Asientos delanteros calefaccionados y ventilados',
      'Ajuste lumbar automático de cuatro posiciones (Conductor/Pasajero)',
      'Frenos de discos ventilados con caliper de doble pistón',
      'Pisaderas'
    ]
  },
  {
    patente: 'PHTL16',
    caracteristicas: [
      'Dirección asistida',
      'Aire Acondicionado',
      'Doble Airbags',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Radio MP3/CD/USB/AUX/BLUETOOTH',
      'Frenos de disco en ruedas delanteras',
      'Cierre centralizado',
      'Motor bencinero',
      'Transmisión mecánica de 5 velocidades'
    ]
  },
  {
    patente: 'KGST58',
    caracteristicas: [
      'Dirección hidráulica',
      'Doble airbag frontal',
      'Aire acondicionado',
      'Espejos electricos',
      'Control crucero',
      'Alzavidrios electricos',
      'Cierre centralizado',
      'Radio MP3/AUX/CD/BLUETOOTH',
      'Sistema de frenos ABS con EBD',
      'Llantas de aleación',
      'Pisaderas',
      'Barras de techo para caja portaequipajes',
      'Barra antivuelco',
      'Frenos de disco en ruedas delanteras',
      'Transmisión Mecanica de 6 velocidades',
      'Motor diesel'
    ]
  },
  {
    patente: 'LBTZ85',
    caracteristicas: [
      'Dirección asistida',
      'Aire acondicionado',
      'Alzavidrios eléctricos',
      'Cierre centralizado con mando a distancia',
      'Espejos eléctricos',
      'Frenos de disco 4 ruedas',
      'Llantas bicolor',
      'Radio multimedia con pantalla',
      'Camara y sensores de retroceso',
      'Airbags',
      'Barras de techo',
      'Motor diesel',
      'Traccion AWD',
      'Transmisión mecánica'
    ]
  },
  {
    patente: 'JYFJ76',
    caracteristicas: [
      'Dirección asistida',
      'Aire acondicionado',
      'Alzavidrios eléctricos',
      'Cierre centralizado con mando a distancia',
      'Espejos eléctricos',
      'Frenos de disco 4 ruedas',
      'Llantas bicolor',
      'Radio multimedia con pantalla',
      'Camara y sensores de retroceso',
      'Airbags',
      'Barras de techo',
      'Motor diesel',
      'Traccion AWD',
      'Transmisión mecánica'
    ]
  },
  {
    patente: 'GVKJ54',
    caracteristicas: [
      'Dirección asistida',
      'Climatizador bizona',
      'Airbags frontales, laterales y de cabeza',
      'Sensores de retroceso',
      'Tercera corrida de asientos',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Radio con CD/MP3/USB',
      'Comandos radio al volante',
      'Frenos de disco en las 4 ruedas',
      'Frenos ABS con EBD',
      'Freno de estacionamiento de pedal',
      ' Llantas de aleación de 17',
      'Cierre centralizado',
      'Apertura de puerta a distancia con llave',
      'Motor bencinero',
      'Transmisión automatica de 6 velocidades'
    ]
  },
  {
    patente: 'RBBG68',
    caracteristicas: [
      'Dirección asistida',
      'Airbags',
      'Aire acondicionado',
      'Sensor de retroceso',
      'Señalizador en los espejos laterales',
      'Frenos ABS con EBD',
      'Alzavidrios electricos',
      'Cierre centralizado y control apertura a distancia',
      'Radio con CD, MP3 / AUX',
      'Comando de radio al volante',
      'Llantas de aleación',
      'Frenos de disco en ruedas delanteras',
      'Traccion 4X2',
      'Transmisión Mecanica',
      'Motor diesel'
    ]
  },
  {
    patente: 'KWLX23',
    caracteristicas: [
      'Dirección electrica',
      'Aire Acondicionado',
      'Doble Airbags',
      'Sensores de retroceso',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Radio MP3/CD/USB/AUX',
      'Comandos radio al volante',
      'Frenos de disco en ruedas delanteras',
      'Llantas',
      'Cierre centralizado',
      'Apertura de puerta a distancia con llave',
      'Motor bencinero',
      'Transmisión mecánica de 5 velocidades'
    ]
  },
  {
    patente: 'RJLW35',
    caracteristicas: [
      'Dirección asistida',
      '3 Corridas de asientos',
      'Aire Acondicionado',
      'Doble airbag frontal',
      'Sensores de retroceso',
      'Camara de retroceso',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Radio con pantalla Touch',
      'Comandos radio al volante',
      'Frenos ABS + EBD',
      'Cierre centralizado',
      'Apertura de puerta a distancia con llave',
      'Motor bencinero',
      'Transmisión mecánica de 5 velocidades'
    ]
  },
  {
    patente: 'JRVY97',
    caracteristicas: [
      'Todas las mantenciones en concesionario oficial',
      'Boton Start-Stop',
      'Airbags frontales - laterales - rodilla - cortina',
      'Control electrónico de estabilidad',
      '3 Corridas de asientos',
      'Aire acondicionado - Control de temperatura automático de zona dual',
      'Radio 4.3: pantalla táctil de 4.3 pulgadas y 6 parlantes',
      'Comandos de radio en el volante',
      'Cámara de retroceso',
      'Apertura y cierre a distancia',
      'Frenos ABS',
      'Llantas con frenos de discos en las 4 ruedas',
      'Barras para maleta portaequipaje',
      'Cierre centralizado',
      'Transmisión Automática',
      'Motor bencinero'
    ]
  },
  {
    patente: 'HWJB10',
    caracteristicas: [
      'Encendido con botón',
      'Airbags frontales, laterales, cortina y rodilla',
      'Aire acondicionado automático climatizador dual',
      'Vidrios eléctricos delanteros y traseros',
      'Cierre centralizado con sensor de velocidad y apertura remota',
      'ABS en 4 ruedas con freno de disco',
      'Control de estabilidad electrónica',
      'Asistencia de frenado avanzado',
      'Control de tracción',
      'Llantas aluminio',
      'Sistema multimedia UCONNECT 8.4 — pantalla tactil de 8.4 con radio AM/FM y Bluetooth',
      'Camara de retroceso',
      'Conectores de audio y video — Puertos HDMI/USB/SD/AUX',
      'Pantallas de entretenimiento en cabeceras para pasajeros traseros',
      'Control de Velocidad Crucero',
      'Controles de audio en el volante',
      'Asiento conductor con memoria',
      'Asientos delanteros calefaccionados y ventilados',
      'Ajuste lumbar automático',
      'Frenos de discos en las 4 ruedas'
    ]
  },
  {
    patente: 'RSKS89',
    caracteristicas: [
      'Dirección electrica',
      'Aire Acondicionado',
      'Computador a bordo',
      'Encendido con boton y llave inteligente',
      'Doble Airbags',
      'Camara de retroceso',
      'Sensores de retroceso',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Radio con pantalla touch de 9',
      'Comandos radio al volante',
      'Frenos de disco en las 4 ruedas',
      'Freno de estacionamiento electronico',
      'Llantas',
      'Cierre centralizado',
      'Apertura de puerta a distancia con llave',
      'Motor bencinero',
      'Transmisión mecánica de 5 velocidades'
    ]
  },
  {
    patente: 'RRYP10',
    caracteristicas: [
      'Dirección electrica',
      'Aire Acondicionado',
      'Computador a bordo',
      'Doble Airbags',
      'Camara de retroceso',
      'Sensores de retroceso',
      'Alzavidrios eléctricos',
      'Espejos eléctricos',
      'Radio con pantalla touch de 8',
      'Comandos radio al volante',
      'Frenos de disco en las 4 ruedas',
      'Freno de estacionamiento electronico',
      'Llantas',
      'Cierre centralizado',
      'Apertura de puerta a distancia con llave',
      'Motor bencinero',
      'Transmisión mecánica de 5 velocidades'
    ]
  }
]

puts '###############'
puts 'Cargando caracteristicas de los autos en stock'

limit = 1

while limit <= 25
  puts '#' * limit
  limit += 1
  sleep(0.2)
  print "\e[F\e[K"
end

patentes.each do |patente|
  auto = Auto.find_by(patente: patente[:patente])
  puts auto.caracteristicas = patente[:caracteristicas]
  auto.save!
end
