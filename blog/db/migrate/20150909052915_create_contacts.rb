class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :subject
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
