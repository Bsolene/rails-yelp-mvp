class ChangeColumnTypePhoneNumber < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :phone_number, :string
    change_column :reviews, :content, :text
  end
end
