class Labo < ActiveRecord::Base
validates :naam, :docent_id, :presence => true
end
