class AddUserIdToGhosts < ActiveRecord::Migration
  def change
    add_reference :ghosts, :user, index: true
    add_foreign_key :ghosts, :users
  end
end
