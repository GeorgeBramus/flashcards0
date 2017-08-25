class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :original_text
      t.text :translated_text
      t.date :view_date

      t.timestamps
    end
  end
end
