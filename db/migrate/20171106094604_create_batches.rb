class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.integer :name
      t.datetime :start_date
      t.datetime :ends_at

      t.timestamps
    end
  end
end
