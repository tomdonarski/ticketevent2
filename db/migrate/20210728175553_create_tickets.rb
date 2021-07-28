class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.boolean :sold, null: false, default: false

      t.timestamps
    end
  end
end
