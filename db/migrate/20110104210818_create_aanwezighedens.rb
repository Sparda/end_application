class CreateAanwezighedens < ActiveRecord::Migration
  def self.up
    create_table :aanwezighedens do |t|
      t.integer :labo_id
      t.integer :student_id
      t.integer :aanwezig

      t.timestamps
    end
  end

  def self.down
    drop_table :aanwezighedens
  end
end
