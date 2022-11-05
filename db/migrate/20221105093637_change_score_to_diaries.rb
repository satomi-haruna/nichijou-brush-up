class ChangeScoreToDiaries < ActiveRecord::Migration[6.1]
  def change
    change_column :diaries, :score, :decimal, precision: 5, scale: 3, default: 0, null: false
  end

end
