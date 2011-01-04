class Labo < ActiveRecord::Base
validates :name, :docent_id, :presence => true
end
