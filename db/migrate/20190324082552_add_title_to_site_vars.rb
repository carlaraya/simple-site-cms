class AddTitleToSiteVars < ActiveRecord::Migration[5.2]
  def change
    add_column :site_vars, :title, :string
  end
end
