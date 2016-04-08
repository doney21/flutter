class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything sinde of this method is translated to sQL code and modified the database (currently SQlite)
    add_column :users, :username, :string   #add a new column to table 'users'
    add_index :users, :username, unique: true #first, index usernames for quick(rapid) lookup, Second,ensure usernames are always unique
  end
end
