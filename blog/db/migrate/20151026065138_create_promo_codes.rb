class CreatePromoCodes < ActiveRecord::Migration
  def change
    create_table :promo_codes do |t|
      t.string :code
      t.integer :discount

      t.timestamps
    end
  end
end
