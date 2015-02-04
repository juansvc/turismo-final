class CreateTransportes < ActiveRecord::Migration
  def change
    create_table :transportes do |t|
      t.text :lugar_salida
      t.text :lugar_llegada
      t.time :hora_salida
      t.time :hora_llegada
      t.date :fecha
      t.references :nombre_transporte, index: true
      t.integer :nombre_transporte_id

      t.timestamps
    end
  end
end
