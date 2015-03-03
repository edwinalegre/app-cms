class AddColumnColumnsToSections < ActiveRecord::Migration
  def change
    add_column :sections, :columns, :integer
  end
end
