class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :imageurl
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
