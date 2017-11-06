class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :batches, :ends_at, :end_date
  end
end
