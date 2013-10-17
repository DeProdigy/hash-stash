class CreateVotesTable < ActiveRecord::Migration
  def up
    create_table :votes do |t|
      t.string :name
      t.integer :yes
      t.integer :no
      t.timestamps
    end
  end

  def down
    drop_table :votes
  end
end
