class RenameColumnForCard < ActiveRecord::Migration[5.1]
  def change
    change_table :cards do |t|
      t.rename :view_date, :review_date
    end
  end
end
