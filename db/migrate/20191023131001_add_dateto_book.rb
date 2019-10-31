class AddDatetoBook < ActiveRecord::Migration[5.2]
  def change
  	add_column :books, :published_date, :date
  end
end
