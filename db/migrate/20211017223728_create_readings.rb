class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.text :data

      t.timestamps
    end
  end
end
