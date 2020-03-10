class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :game_src
      t.string :img_src

      t.timestamps
    end
  end
end
