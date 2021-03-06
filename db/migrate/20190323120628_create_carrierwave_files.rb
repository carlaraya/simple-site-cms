class CreateCarrierwaveFiles < ActiveRecord::Migration[5.2]
  def up
    create_table :carrierwave_files do |t|
      t.column :path, :string, :null => false
      t.column :pg_largeobject_oid, :oid, :null => false
      t.column :size, :integer, :null => false
      t.column :content_type, :string
      t.timestamps(:null => false)
    end
    add_index :carrierwave_files, :path, :unique => true
  end

  def down
    drop_table :carrierwave_files
  end
end
