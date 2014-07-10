class AddTextToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :text, :text
  end
end
