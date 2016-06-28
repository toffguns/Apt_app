class AddContactInfoToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :contact_info, :string
  end
end
