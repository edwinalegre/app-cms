class AddTaglineFooterLogoBackgroundColumns < ActiveRecord::Migration
  def change
    add_column :websites, :tagline, :string
    add_column :websites, :logo, :string
    add_column :websites, :backgroundimage, :string
    add_column :websites, :footer, :string
  end
end
