class UpdateStatusColumn < ActiveRecord::Migration
  def up
    remove_column :entries, :status
    add_column :entries, :list_id, :integer
  end

  def down
  end
end
