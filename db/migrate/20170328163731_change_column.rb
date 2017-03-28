class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_default :pairings, :count, 0
  end
end
