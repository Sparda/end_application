class Studenten < ActiveRecord::Base
validates :voornaam, :familienaam, :presence => true
end
