class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.string :section_type
      t.boolean :visible, default: false
      t.string :content
      t.integer :page_id

      t.timestamps null: false
    end
  end
end
