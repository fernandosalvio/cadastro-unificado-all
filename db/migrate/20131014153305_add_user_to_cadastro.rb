class AddUserToCadastro < ActiveRecord::Migration
  def change
  	add_column :cadastros, :user_id, :integer
  end
end
