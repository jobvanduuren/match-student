class AddDayToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :day, :integer
  end
end
