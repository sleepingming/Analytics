class CreateHeinzData < ActiveRecord::Migration[6.1]
  def change
    create_table :heinz_data do |t|
      t.integer :count
      t.string :date
      t.timestamps
    end
  end
end
