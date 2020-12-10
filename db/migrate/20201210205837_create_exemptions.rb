class CreateExemptions < ActiveRecord::Migration[6.0]
  def change
    create_table :exemptions do |t|
    t.string :name
    t.string :isin 
    t.string :stock_market
      t.timestamps
    end
  end
end
