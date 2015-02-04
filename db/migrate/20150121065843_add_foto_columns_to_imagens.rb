class AddFotoColumnsToImagens < ActiveRecord::Migration
  def self.up
    add_attachment :imagens, :foto
  end

  def self.down
    remove_attachment :imagens, :foto
  end
end
