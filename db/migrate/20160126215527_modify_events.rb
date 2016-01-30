class ModifyEvents < ActiveRecord::Migration
  def change
		rename_column :events, :eve_number, :number
  end
end
