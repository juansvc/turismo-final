class CreateTipoActividads < ActiveRecord::Migration
  def change
    create_table :tipo_actividads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
