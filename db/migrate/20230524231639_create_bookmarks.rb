class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.boolean :bookmark
      t.string :comment

      t.timestamps
    end
  end
end
