class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.references :ticket, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
