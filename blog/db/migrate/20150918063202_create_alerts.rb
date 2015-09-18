class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.timestamp :alert_date
      t.integer :post_id
      t.integer :alert_count

      t.timestamps
    end
  end
end
