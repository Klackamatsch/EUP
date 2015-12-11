class RenameTable < ActiveRecord::Migration
  def change
  	rename_table Fundraising, project
  end
end
