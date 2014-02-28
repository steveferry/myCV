class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.text :content

      t.timestamps
    end
  end
end
