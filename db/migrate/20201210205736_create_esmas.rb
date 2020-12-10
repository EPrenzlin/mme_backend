class CreateEsmas < ActiveRecord::Migration[6.0]
  def change
    create_table :esmas do |t|
      t.string :isin
      t.string :name
      t.timestamps
    end
  end
end
