class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|
      t.text :descripcion
      t.time :hora_inicio
      t.time :hora_fin
      t.references :tipo_actividad, index: true
      t.integer :tipo_actividad_id

      t.timestamps
    end
  end
end
