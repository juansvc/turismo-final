class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :comentario
      t.references :lugar, index: true
      t.integer :lugar_id

      t.timestamps
    end
  end
end
