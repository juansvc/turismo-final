class Ubicacion < ActiveRecord::Base
  belongs_to :ciudad
  has_one :lugar
end
