class Actividad < ActiveRecord::Base
  belongs_to :tipo_actividad
  has_and_belongs_to_many :lugars
end
