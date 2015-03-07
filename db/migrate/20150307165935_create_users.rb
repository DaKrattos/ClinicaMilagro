class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :identi, unique: true
      t.string :name
      t.string :lastname
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
