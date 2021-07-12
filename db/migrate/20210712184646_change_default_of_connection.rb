class ChangeDefaultOfConnection < ActiveRecord::Migration[6.0]
  def change
    change_column_default :connections, :status, 0
  end
end
