class CreateLugars < ActiveRecord::Migration
  def change
    create_table :lugars do |t|
      t.string :nombre_lugar
      t.text :descripcion_lugar
      t.text :telefonos
      t.string :link
      t.references :tipo_lugar, index: true
      t.references :ubicacion, index: true
      t.integer :tipo_lugar_id
      t.integer :ubicacion_id

      t.timestamps
    end
  end
end
