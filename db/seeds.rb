# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Creando autos de prueba...'

CargaStock.new('/home/agustin/Desktop/puelche_automotriz/app/services/Stock.xlsx').call

# Auto.create!([
#                {
#                  marca: 'Toyota',
#                  estilo: 'Corolla',
#                  modelo: 'GLI 2.0 XEI',
#                  anio: 2020,
#                  color: 'Blanco',
#                  costo: 7_500_000,
#                  precio: 9_500_000,
#                  kilometraje: 34_000,
#                  combustible: 'Gasolina',
#                  transmision: 'Automática',
#                  traccion: 'Delantera',
#                  categoria: 'Sedan',
#                  publicado: true,
#                  estado: 0 # disponible
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

puts 'Autos creados con éxito'
