class FixColumnContentName < ActiveRecord::Migration
  def change
    rename_column :cvs, :content, :json_content
  end
end
