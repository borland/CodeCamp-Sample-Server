class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.belongs_to :person
      t.string :caption
      t.string :mime_type
      t.binary :image
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
