class AddMiningTypeToCoins < ActiveRecord::Migration[8.0]
  def change
    add_reference :coins, :mining_type, foreign_key: true
  end
end
