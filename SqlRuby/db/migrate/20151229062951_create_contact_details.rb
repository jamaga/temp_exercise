class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.references :contact, index: true, foreign_key: true
      t.string :name
      t.string :surname
      t.string :address

      t.timestamps null: false
    end
  end
end
