class CreateAmounts < ActiveRecord::Migration[5.2]
  def change
    create_table :amounts do |t|
      t.string :monthly_contribution, null: false
      t.integer :group_id, reference: true, foreign_key: true
      t.timestamps
    end
  end
end
