class Labo < ActiveRecord::Base
validates :naam, :docent_id, :presence => true
validates_numericality_of :docent_id,:only_integer => true, :message => "   Enkel een waarde van het type integer is toegelaten voor de docent id."
end
