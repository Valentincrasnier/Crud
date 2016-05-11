class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.string :email
      t.string :ville
      t.timestamps null: false
    end
  end
end
