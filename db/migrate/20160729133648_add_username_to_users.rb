class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside this method, is transleted into SQL code and modified the database (currently SQLite)
    add_column :users, :username, :string # add a new column to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true # First, index username for quick lookup. Second, insure usernames are ALWAYS unique. 
  end
end
