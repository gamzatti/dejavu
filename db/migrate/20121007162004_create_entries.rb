class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name, :null => false  
      t.string :medium, :null => false  
      t.string :status, :null => false  
      t.string :url

      t.timestamps
    end
  end
end
