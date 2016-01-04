class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.references :contact, index: true, foreign_key: true
      t.string :gender
      t.string :phone
      t.integer :height
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
