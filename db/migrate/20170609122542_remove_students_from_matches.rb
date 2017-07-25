class RemoveStudentsFromMatches < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :students, :string
  end
end
