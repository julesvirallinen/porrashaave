class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.date :start
      t.date :end
      t.string :title
      t.integer :goal

      t.timestamps
    end
  end
end
