class FixError < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:foods, :user_id, from: nil, to: 0)
  end
end
