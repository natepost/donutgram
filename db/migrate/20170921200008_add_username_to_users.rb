class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change # anything inside this method, is translated to SQL code and modified to the DB (currently SQlite)
    add_column :users, :username, :string # add a new column to table "users", called "username" and type of "string"
    add_index :users, :username, unique: true #first, index usernames for rapid lookup.  second ensure usernames are ALWAYS unique.
  end
end
