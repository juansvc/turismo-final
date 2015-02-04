class CreateTipoLugars < ActiveRecord::Migration
  def change
    create_table :tipo_lugars do |t|
      t.string :nombre_tipo

      t.timestamps
    end
  end
end
