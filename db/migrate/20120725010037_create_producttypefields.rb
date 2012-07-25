class CreateProducttypefields < ActiveRecord::Migration
  def self.up
    create_table :producttypefields do |t|
      t.string :name, :null => false
      t.string :defaultvalue
      t.boolean :required, :null => false
      t.integer :fieldtype_id, :null => false
      t.integer :producttype_id, :null => false

      t.timestamps
    end
    add_index :producttypefields, :fieldtype_id
    add_index :producttypefields, :producttype_id
  end
  
  def self.down
  	drop_table :producttypefields
  end
end
