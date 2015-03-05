class AddWebsitesColumnsSocialMedia < ActiveRecord::Migration
  def change
    add_column :websites, :facebook, :string
    add_column :websites, :instagram, :string
    add_column :websites, :pinterest, :string
    add_column :websites, :youtube, :string
    add_column :websites, :twitter, :string
  end
end
