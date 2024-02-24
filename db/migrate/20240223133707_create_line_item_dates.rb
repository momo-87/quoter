class CreateLineItemDates < ActiveRecord::Migration[7.0]
  def change
    create_table :line_item_dates do |t|
      t.references :quote, null: false, foreign_key: true

      # Adding null: false constraint on date
      t.date :date, null: false

      t.timestamps
    end
    
  end
end
