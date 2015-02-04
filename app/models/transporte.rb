class Transporte < ActiveRecord::Base
  belongs_to :nombre_transporte
  has_and_belongs_to_many :lugars
end
