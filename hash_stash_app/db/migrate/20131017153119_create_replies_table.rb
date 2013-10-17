class CreateRepliesTable < ActiveRecord::Migration
  def up
    create_table :replies do |t|
      t.string :content
      t.integer :comment_id
      t.timestamps
    end
  end

  def down
    drop_table :replies
  end
end
