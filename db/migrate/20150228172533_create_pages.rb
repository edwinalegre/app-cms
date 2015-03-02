class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :page_type
      t.string :link
      t.string :background
      t.integer :position
      t.boolean :visible, default: false
      t.integer :website_id

      t.timestamps null: false
    end
  end
end
