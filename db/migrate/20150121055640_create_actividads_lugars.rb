class CreateActividadsLugars < ActiveRecord::Migration
  def change
    create_table :actividads_lugars do |t|
      t.belongs_to :actividad, index: true
      t.belongs_to :lugar, index: true
    end
  end
end
