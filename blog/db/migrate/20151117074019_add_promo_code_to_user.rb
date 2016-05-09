class AddPromoCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :promo_code, :string
    add_column :users, :discount, :integer
  end
end
