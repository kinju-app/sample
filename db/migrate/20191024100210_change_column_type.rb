class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
  	change_column :books, :released_date, :datetime
  end
end
