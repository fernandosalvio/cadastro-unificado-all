class RenameAddressField < ActiveRecord::Migration
  def change
  	rename_column :cadastros, :nome_rua, :route
  	rename_column :cadastros, :numero, 	 :street_number
  	rename_column :cadastros, :cep, 	 :postal_code
  	rename_column :cadastros, :cidade, 	 :locality
  	rename_column :cadastros, :bairro, 	 :sublocality
  	rename_column :cadastros, :pais, 	 :country
  	add_column :cadastros, :country_short, :string
  	add_column :cadastros, :formatted_address, :string
  end
end
