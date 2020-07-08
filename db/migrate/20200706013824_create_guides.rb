class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :hobby
      t.string :expertise
      t.integer :rating
      t.string :instagram
      t.string :email
      t.integer :phone
      t.integer :rate
      t.string :about

      t.timestamps
    end
  end
end
