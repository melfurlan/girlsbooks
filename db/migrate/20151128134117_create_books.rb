class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
     	t.string :title, null: false
     	t.string :author, null: false 
     	t.string :publisher, null: true
     	t.integer :year, null: true
      t.timestamps
    end
  end
end
