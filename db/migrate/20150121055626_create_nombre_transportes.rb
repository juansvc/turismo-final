class CreateNombreTransportes < ActiveRecord::Migration
  def change
    create_table :nombre_transportes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
