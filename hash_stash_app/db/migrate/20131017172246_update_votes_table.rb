class UpdateVotesTable < ActiveRecord::Migration
  def up
    #change_column_default(table_name, column_name, default)
    change_column_default :votes, :yes, 0
    change_column_default :votes, :no, 0
  end

  def down
  end
end
