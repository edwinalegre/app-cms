class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :theme

      t.timestamps null: false
    end
  end
end
