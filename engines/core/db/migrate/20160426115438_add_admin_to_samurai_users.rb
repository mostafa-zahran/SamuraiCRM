class AddAdminToSamuraiUsers < ActiveRecord::Migration
  def up
    add_column :samurai_users, :admin, :boolean, default: false
  end

  def down
    remove_column :samurai_users, :admin
  end
end
