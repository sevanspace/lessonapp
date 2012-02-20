class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :topic
      t.string :title
      t.text :content
      t.integer :row
      
     # t.references :row
     # t.references :cell
      #t.references :prereq

      t.timestamps
    end
   # add_index :lessons, :topic_id
  end
end
