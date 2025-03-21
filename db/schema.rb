# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_21_144804) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "autos", force: :cascade do |t|
    t.string "marca"
    t.string "estilo"
    t.string "modelo"
    t.string "color"
    t.integer "anio"
    t.integer "costo"
    t.integer "precio"
    t.string "transmision"
    t.string "traccion"
    t.string "combustible"
    t.string "categoria"
    t.integer "estado"
    t.boolean "publicado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kilometraje"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "primer_nombre"
    t.string "segundo_nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.string "rut"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.string "comuna"
    t.string "ciudad"
    t.string "region"
    t.integer "genero", default: 0, null: false
    t.date "fecha_nacimiento"
    t.integer "estado_civil", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clientes_on_email", unique: true
    t.index ["rut"], name: "index_clientes_on_rut", unique: true
  end

  create_table "cotizacions", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "auto_id", null: false
    t.integer "precio_cotizado"
    t.string "observaciones"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "funcionario_id", null: false
    t.index ["auto_id"], name: "index_cotizacions_on_auto_id"
    t.index ["cliente_id"], name: "index_cotizacions_on_cliente_id"
    t.index ["funcionario_id"], name: "index_cotizacions_on_funcionario_id"
  end

  create_table "financiamientos", force: :cascade do |t|
    t.bigint "forma_pago_id", null: false
    t.integer "pie"
    t.integer "saldo_precio"
    t.integer "plazo"
    t.integer "margen_credito"
    t.integer "valor_cuota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forma_pago_id"], name: "index_financiamientos_on_forma_pago_id"
  end

  create_table "forma_pagos", force: :cascade do |t|
    t.bigint "venta_id", null: false
    t.integer "tipo_pago"
    t.integer "monto_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venta_id"], name: "index_forma_pagos_on_venta_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.string "email"
    t.integer "rol", default: 0, null: false
    t.integer "sucursal", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_funcionarios_on_email", unique: true
    t.index ["rut"], name: "index_funcionarios_on_rut", unique: true
  end

  create_table "vehiculo_parte_pagos", force: :cascade do |t|
    t.bigint "forma_pago_id", null: false
    t.integer "valor_vpp"
    t.string "patente"
    t.integer "monto_reparaciones"
    t.string "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forma_pago_id"], name: "index_vehiculo_parte_pagos_on_forma_pago_id"
  end

  create_table "ventas", force: :cascade do |t|
    t.bigint "funcionario_id", null: false
    t.bigint "cliente_id", null: false
    t.bigint "cotizacion_id", null: false
    t.bigint "auto_id", null: false
    t.integer "precio_lista"
    t.string "descuento_integer"
    t.integer "valor_transferencia"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auto_id"], name: "index_ventas_on_auto_id"
    t.index ["cliente_id"], name: "index_ventas_on_cliente_id"
    t.index ["cotizacion_id"], name: "index_ventas_on_cotizacion_id"
    t.index ["funcionario_id"], name: "index_ventas_on_funcionario_id"
  end

  add_foreign_key "cotizacions", "autos"
  add_foreign_key "cotizacions", "clientes"
  add_foreign_key "cotizacions", "funcionarios"
  add_foreign_key "financiamientos", "forma_pagos"
  add_foreign_key "forma_pagos", "ventas"
  add_foreign_key "vehiculo_parte_pagos", "forma_pagos"
  add_foreign_key "ventas", "autos"
  add_foreign_key "ventas", "clientes"
  add_foreign_key "ventas", "cotizacions"
  add_foreign_key "ventas", "funcionarios"
end
