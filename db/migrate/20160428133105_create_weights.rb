class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :weight, null: false, precision: 10, scale: 4
      t.datetime :created_at, null: false
    end
  end
end
