class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :guide, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
