class AddUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column(:name, :string)
      t.column(:email, :string)
      t.column(:admin, :boolean, :default => false)
      t.timestamps
    end
  end
