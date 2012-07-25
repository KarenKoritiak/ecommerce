class CreateProducttypes < ActiveRecord::Migration
  def self.up
    create_table :producttypes do |t|
      t.string :title, :null => false

      t.timestamps
    end
  end
  
  def self.down
  	drop_table :producttypes
  end
end
