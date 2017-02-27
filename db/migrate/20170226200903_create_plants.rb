class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :height
      t.string :width
      t.string :hardiness
      t.string :minsoiltemp
      t.string :depth
      t.string :separation
      t.string :watering
      t.string :fertilizing
      t.string :maturity
      t.string :production
      t.string :harvest
      t.string :img_url
      t.references :season ,index: true, foreign_key: true
    end
  end
end
