class AddStatusTypeToUserholidays < ActiveRecord::Migration
  def change
    add_column :userholidays, :status_type, :string
  end
end
