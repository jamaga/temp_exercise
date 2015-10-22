class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :author
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
