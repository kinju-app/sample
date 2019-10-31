class RenameColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :books, :published_date, :released_date
  end
end
