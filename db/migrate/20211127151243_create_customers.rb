class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastName
      t.integer :cellPhone
      t.string :email
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
