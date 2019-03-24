class CreateSiteVars < ActiveRecord::Migration[5.2]
  def change
    create_table :site_vars do |t|
      t.text :header
      t.text :footer

      t.timestamps
    end
  end
end
