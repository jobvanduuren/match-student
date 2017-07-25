class AddStudent1ToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :student1, :string
  end
end
