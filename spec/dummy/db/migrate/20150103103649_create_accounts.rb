class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :swift_string
      t.timestamps
    end
  end
end