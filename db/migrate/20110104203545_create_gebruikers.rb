class CreateGebruikers < ActiveRecord::Migration
  def self.up
    create_table :gebruikers do |t|
      t.string :voornaam
      t.string :familienaam
      t.string :email
      t.string :wachtwoord

      t.timestamps
    end
  end

  def self.down
    drop_table :gebruikers
  end
end
