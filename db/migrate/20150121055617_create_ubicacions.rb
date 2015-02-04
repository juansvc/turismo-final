class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.string :longitud
      t.string :latitud
      t.text :referencia
      t.references :ciudad, index: true
      t.integer :ciudad_id

      t.timestamps
    end
  end
end
