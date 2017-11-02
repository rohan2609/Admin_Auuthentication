class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :admin_no
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
