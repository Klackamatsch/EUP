class AddFieldsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :kinostart, :datetime
    add_column :movies, :description, :text
  end
end
