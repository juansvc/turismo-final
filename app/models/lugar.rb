class Lugar < ActiveRecord::Base
  belongs_to :tipo_lugar
  belongs_to :ubicacion
  has_and_belongs_to_many :transportes
  has_many :imagens
  has_many :comentarios
  has_and_belongs_to_many :actividads
  validates_formatting_of :link, using: :url

  	def self.search(query)
  		where("nombre_lugar or descripcion_lugar like ?", "%#{query}%") 
	end

end
