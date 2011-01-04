class CreateStudentens < ActiveRecord::Migration
  def self.up
    create_table :studentens do |t|
      t.string :voornaam
      t.string :familienaam

      t.timestamps
    end
  end

  def self.down
    drop_table :studentens
  end
end
