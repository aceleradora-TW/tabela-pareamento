class CreatePairs < ActiveRecord::Migration[5.0]
  def change
    create_table :pairs do |t|
      t.string :name_pairs
    end
  end
end
