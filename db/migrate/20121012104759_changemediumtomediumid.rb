class Changemediumtomediumid < ActiveRecord::Migration
  def up
    remove_column :entries, :medium
    add_column :entries, :medium_id, :integer

  end

  def down
  end
end
