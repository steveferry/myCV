class AddUserIdToCvs < ActiveRecord::Migration
  def change
    add_column :cvs, :userId, :int, :default => 0
  end
end
