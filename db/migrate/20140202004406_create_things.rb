class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :description
      t.text :reason
      t.string :street
      t.string :city
      t.string :state, limit: 2
      t.string :zip_code, limit: 5

      t.timestamps
    end
  end
end
