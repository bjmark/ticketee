class AddAdmin < ActiveRecord::Migration
  def up
    add_column :users,:admin,:string,:limit=>1,:default=>'n'
  end

  def down
    remove_column :users,:admin
  end
end
