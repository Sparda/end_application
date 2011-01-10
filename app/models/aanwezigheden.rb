class Aanwezigheden < ActiveRecord::Base
validates :student_id,:labo_id, :aanwezig, :presence => true
validates_numericality_of :student_id, :labo_id, :aanwezig, :only_integer => true, :message => "Enkel een waarde van het type integer is toegelaten."
end
