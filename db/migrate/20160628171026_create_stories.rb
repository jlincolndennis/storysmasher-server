class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.column :title, :string, :limit =>140
      t.column :body, :text
      t.belongs_to :user
      t.timestamps

    end
  end
end
