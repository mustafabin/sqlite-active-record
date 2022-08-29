class CreateGame < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :platform
      t.integer :price
      t.timestamps
    end
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.integer :game_id # this is our foreign key
      t.timestamps
    end
  end
end
