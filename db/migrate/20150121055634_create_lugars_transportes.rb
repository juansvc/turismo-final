class CreateLugarsTransportes < ActiveRecord::Migration
  def change
    create_table :lugars_transportes do |t|
      t.belongs_to :lugar, index: true
      t.belongs_to :transporte, index: true
    end
  end
end
