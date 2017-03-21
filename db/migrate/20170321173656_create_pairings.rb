class CreatePairings < ActiveRecord::Migration[5.0]
  def change
    create_table :pairings do |t|
      t.belongs_to :student
      t.belongs_to :pair
      t.integer :count
    end
  end
end
