class AddStudent2ToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :student2, :string
  end
end
