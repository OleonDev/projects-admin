class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.boolean :recurrent
      t.float :price
      t.date :start_date
      t.date :due_date
      t.integer :status

      t.timestamps
    end
  end
end
