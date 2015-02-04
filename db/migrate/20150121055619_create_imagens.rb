class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.string :nombre_imagen
      t.string :imagen
      t.string :descripcion_imagen
      t.references :lugar, index: true
      t.integer :lugar_id

      t.timestamps
    end
  end
end
