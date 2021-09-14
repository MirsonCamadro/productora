class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :location
      t.date :concert_date
      t.integer :audience, default: 0
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
