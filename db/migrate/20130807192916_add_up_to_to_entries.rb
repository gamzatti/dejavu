class AddUpToToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :up_to, :string
  end
end
