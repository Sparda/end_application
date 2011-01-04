class Gebruiker < ActiveRecord::Base
validates :voornaam, :familienaam, :email, :presence => true
validates :email, :uniqueness => true
validates :wachtwoord, :presence => true, :length => { :within => 6..12}
end
