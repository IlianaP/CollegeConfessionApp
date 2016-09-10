class CreateConfessions < ActiveRecord::Migration
  def change
    create_table :confessions do |t| 
      t.string :name 
      t.text :confession 
      t.timestamps
    end
  end
end
