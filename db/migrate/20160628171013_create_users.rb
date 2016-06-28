class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :username, :string, :limit => 32, :null => false
      t.column :password, :string, :null => false

      t.timestamps
    end
  end
end
