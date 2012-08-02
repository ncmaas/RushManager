class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.datetime :time
      t.integer :length
      t.string :location

      t.timestamps
    end
  end
end
