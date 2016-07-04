class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.column :title, :string, :limit =>140
      t.column :paragraph_1, :text
      t.column :paragraph_2, :text
      t.column :paragraph_3, :text
      t.column :paragraph_4, :text
      t.column :paragraph_5, :text
      t.column :paragraph_6, :text
      t.column :paragraph_7, :text
      t.belongs_to :user
      t.timestamps

    end
  end
end
