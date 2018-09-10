class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.float :rate, null: false
      t.datetime :up_to_date, null: false, index: true
      t.timestamps
    end
  end
end
